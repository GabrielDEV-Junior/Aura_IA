<?php
$pdo = new PDO("mysql:host=localhost;dbname=aura_chat;charset=utf8", "root", "");

$response = '';
$msg = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty($_POST['message'])) {
    $msg = trim($_POST['message']);

    // Detectar se é um pedido de atividade
    if (preg_match('/atividade|sugere|o que fazer|dica|hobby|livro|filme/i', $msg)) {
        $atividades = [
            'Faça uma caminhada de 10 minutos.',
            'Experimente escrever sobre seus sentimentos.',
            'Ouça uma música relaxante.',
            'Tente uma meditação guiada.',
            'Faça um alongamento leve.',
            'Escreva uma carta para você mesmo no futuro.',
            'Desenhe algo que represente seu dia.',
            'Leia um capítulo de um livro inspirador.',
            'Cozinhe uma receita nova.',
            'Organize seu espaço de trabalho.'
        ];
        $response = $atividades[array_rand($atividades)];
    } else {
        // Buscar no banco
        $stmt = $pdo->prepare("SELECT resposta FROM mensagens WHERE mensagem LIKE :msg LIMIT 1");
        $stmt->execute(['msg' => "%$msg%"]);
        $res = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($res) {
            $response = $res['resposta'];
        } else {
            // Se não encontrar, consulta IA OpenAI
            $openai_key = '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';

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, 'https://api.openai.com/v1/chat/completions');
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode([
                "model" => "gpt-3.5-turbo",
                "messages" => [
                    ["role" => "system", "content" => "Você é um assistente emocional chamado AURA."],
                    ["role" => "user", "content" => $msg]
                ],
                "max_tokens" => 100
            ]));
            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                'Content-Type: application/json',
                'Authorization: Bearer ' . $openai_key
            ]);

            $result = curl_exec($ch);
            $data = json_decode($result, true);

            $response = trim($data['choices'][0]['message']['content'] ?? 'Desculpe, não entendi.');

            curl_close($ch);

            // Salvar pergunta e resposta no banco
            $stmt = $pdo->prepare("INSERT INTO mensagens (usuario, mensagem, resposta) VALUES (?, ?, ?)");
            $stmt->execute(['usuário', $msg, $response]);
        }
    }
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>AURA - Chat Emocional</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="container">
    <h1>AURA - Chat Emocional</h1>

    <div id="chat">
      <?php if ($_SERVER['REQUEST_METHOD'] === 'POST'): ?>
        <div class="msg user"><?= htmlspecialchars($msg) ?></div>
        <div class="msg aura"><?= htmlspecialchars($response) ?></div>
      <?php else: ?>
        <div class="msg aura">Olá! Como posso te ajudar hoje? 💬</div>
      <?php endif; ?>
    </div>

    <div class="quick-buttons">
      <button onclick="setQuickMessage('me sugira uma atividade')">Quero uma atividade</button>
      <button onclick="setQuickMessage('me sugere um hobby')">Quero um hobby</button>
      <button onclick="setQuickMessage('me sugere um livro')">Me sugere um livro</button>
      <button onclick="setQuickMessage('me sugere um filme')">Me sugere um filme</button>
    </div>

    <form method="POST" id="chatForm">
      <input type="text" name="message" id="userInput" placeholder="Digite sua mensagem..." required autofocus>
      <button type="submit">Enviar</button>
    </form>
  </div>

  <script>
    function setQuickMessage(msg) {
      document.getElementById('userInput').value = msg;
      document.getElementById('chatForm').submit();
    }
  </script>
</body>
</html>
