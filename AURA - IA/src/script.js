document.addEventListener('DOMContentLoaded', function () {
  const sendBtn = document.getElementById('sendBtn');
  const input = document.getElementById('userInput');
  const chat = document.getElementById('chat');

  function appendMessage(text, sender) {
    const msg = document.createElement('div');
    msg.classList.add('message', sender);
    msg.innerText = text;
    chat.appendChild(msg);
    chat.scrollTop = chat.scrollHeight;
  }

  function sendMessage() {
    const userText = input.value.trim();
    if (userText === '') return;

    appendMessage(userText, 'user');

    // Simula resposta da AURA
    setTimeout(() => {
      const response = generateResponse(userText);
      appendMessage(response, 'aura');
    }, 500);

    input.value = '';
  }

  function generateResponse(message) {
    // Respostas simples de exemplo
    if (message.includes('triste')) {
      return 'Sinto muito que esteja se sentindo assim. Estou aqui para conversar 💙';
    } else if (message.includes('feliz')) {
      return 'Fico muito feliz em ouvir isso! 😊';
    } else {
      return 'Me fale mais sobre como você está se sentindo.';
    }
  }

  // Eventos
  sendBtn.addEventListener('click', sendMessage);
  input.addEventListener('keydown', function (e) {
    if (e.key === 'Enter') {
      sendMessage();
    }
  });
});
