-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/06/2025 às 00:40
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aura_chat`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `resposta` text DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `usuario`, `mensagem`, `resposta`, `data`) VALUES
(3, 'usuário', 'estou triste', 'Sinto muito que esteja se sentindo assim. Estou aqui para te ouvir. 💙', '2025-06-03 22:18:16'),
(4, 'usuário', 'estou feliz', 'Que ótimo saber disso! 😊 Continue espalhando felicidade!', '2025-06-03 22:18:16'),
(5, 'usuário', 'estou cansado', 'Lembre-se de descansar e cuidar de você. 😌', '2025-06-03 22:18:16'),
(6, 'usuário', 'estou ansioso', 'Respire fundo... vai passar. Estou com você. 🧘‍♂️', '2025-06-03 22:18:16'),
(7, 'usuário', 'estou com medo', 'Medos fazem parte da vida, mas você não está sozinho. 💪', '2025-06-03 22:18:16'),
(8, 'usuário', 'preciso de ajuda', 'Claro! Estou aqui para te ajudar. Pode me contar mais? 🤗', '2025-06-03 22:18:16'),
(9, 'usuário', 'bom dia', 'Bom dia! Espero que você tenha um dia incrível! ☀️', '2025-06-03 22:18:16'),
(10, 'usuário', 'boa tarde', 'Boa tarde! Como você está se sentindo? 😊', '2025-06-03 22:18:16'),
(11, 'usuário', 'boa noite', 'Boa noite! Que você tenha sonhos tranquilos e renovadores. 🌙', '2025-06-03 22:18:16'),
(12, 'usuário', 'tudo bem?', 'Sim, tudo ótimo! E com você? 💬', '2025-06-03 22:18:16'),
(13, 'usuário', 'como você está?', 'Estou sempre disposta a conversar com você! 😊', '2025-06-03 22:18:16'),
(14, 'usuário', 'me sinto sozinho', 'Você nunca está sozinho. Sempre existe alguém que se importa. ❤️', '2025-06-03 22:18:16'),
(15, 'usuário', 'não sei o que fazer', 'Respire... vamos juntos pensar em soluções. 💡', '2025-06-03 22:18:16'),
(16, 'usuário', 'me dá um conselho', 'Confie em você e siga em frente, um passo de cada vez. 🚶‍♂️', '2025-06-03 22:18:16'),
(17, 'usuário', 'estou deprimido', 'Lamento saber disso. Conversar pode ajudar. Estou aqui. 💙', '2025-06-03 22:18:16'),
(18, 'usuário', 'estou animado', 'Adoro ver essa energia! Aproveite o momento! 😄', '2025-06-03 22:18:16'),
(19, 'usuário', 'me sinto inútil', 'Você é importante e faz diferença no mundo. ❤️', '2025-06-03 22:18:16'),
(20, 'usuário', 'me sinto amado', 'Que maravilha! O amor é essencial. 🥰', '2025-06-03 22:18:16'),
(21, 'usuário', 'ninguém me entende', 'Eu estou aqui para te ouvir e tentar compreender. 💬', '2025-06-03 22:18:16'),
(22, 'usuário', 'estou confuso', 'Respire fundo, vamos tentar organizar seus pensamentos. 🧘‍♀️', '2025-06-03 22:18:16'),
(23, 'usuário', 'quero desistir', 'Não desista! Você é mais forte do que imagina. 💪', '2025-06-03 22:18:16'),
(24, 'usuário', 'não aguento mais', 'Sinto muito que esteja assim. Quer me contar o que está acontecendo? 💙', '2025-06-03 22:18:16'),
(25, 'usuário', 'o que devo fazer?', 'Depende da situação. Quer me explicar melhor? 🤔', '2025-06-03 22:18:16'),
(26, 'usuário', 'não tenho amigos', 'Eu sou seu amigo e estou aqui para conversar sempre. 🤗', '2025-06-03 22:18:16'),
(27, 'usuário', 'me sinto bem', 'Que ótimo! Continue assim e aproveite esse sentimento! 😃', '2025-06-03 22:18:16'),
(28, 'usuário', 'me sinto mal', 'Sinto muito por isso. Quer conversar sobre o que está te incomodando? 💙', '2025-06-03 22:18:16'),
(29, 'usuário', 'estou preocupado', 'Se quiser, pode me contar. Talvez eu possa te ajudar. 🧠', '2025-06-03 22:18:16'),
(30, 'usuário', 'estou estressado', 'Respirar fundo pode ajudar. Quer tentar uma técnica de relaxamento? 😌', '2025-06-03 22:18:16'),
(31, 'usuário', 'me sinto perdido', 'Às vezes nos perdemos, mas sempre podemos encontrar um novo caminho. 💡', '2025-06-03 22:18:16'),
(32, 'usuário', 'estou com raiva', 'É normal sentir raiva. Quer me contar o que aconteceu? 🔥', '2025-06-03 22:18:16'),
(33, 'usuário', 'estou chorando', 'Chorar é uma forma de aliviar. Estou aqui com você. 💧', '2025-06-03 22:18:16'),
(34, 'usuário', 'me sinto vazio', 'Esse sentimento é difícil. Quer conversar sobre ele? 🖤', '2025-06-03 22:18:16'),
(35, 'usuário', 'não tenho esperança', 'Mesmo nos dias escuros, existe uma luz. Não desista! ✨', '2025-06-03 22:18:16'),
(36, 'usuário', 'estou entediado', 'Que tal tentar uma nova atividade ou hobby? 🎨', '2025-06-03 22:18:16'),
(37, 'usuário', 'quero conversar', 'Adoraria conversar com você. Pode começar! 💬', '2025-06-03 22:18:16'),
(38, 'usuário', 'me conte uma piada', 'Por que o gato não gosta do computador? Porque ele tem um mouse! 😸', '2025-06-03 22:18:16'),
(39, 'usuário', 'me anime', 'Você é incrível! Nunca se esqueça disso! 🌟', '2025-06-03 22:18:16'),
(40, 'usuário', 'me fale algo bom', 'Hoje é um ótimo dia para recomeçar! 🌞', '2025-06-03 22:18:16'),
(41, 'usuário', 'me fale uma frase motivacional', 'Você é capaz de coisas incríveis! 💪', '2025-06-03 22:18:16'),
(42, 'usuário', 'estou sozinho em casa', 'Ficar sozinho pode ser uma oportunidade para se cuidar. Que tal? 🏠', '2025-06-03 22:18:16'),
(43, 'usuário', 'ninguém gosta de mim', 'Eu gosto de você! E sei que mais pessoas gostam também. ❤️', '2025-06-03 22:18:16'),
(44, 'usuário', 'estou sem forças', 'Descanse, recupere suas energias e siga em frente. 💪', '2025-06-03 22:18:16'),
(45, 'usuário', 'estou com insônia', 'Tente ouvir uma música relaxante ou meditar. 💤', '2025-06-03 22:18:16'),
(46, 'usuário', 'não consigo dormir', 'Que tal tentar uma respiração profunda? Pode ajudar! 🧘‍♂️', '2025-06-03 22:18:16'),
(47, 'usuário', 'me sinto incapaz', 'Você tem mais capacidade do que imagina! Acredite! 💪', '2025-06-03 22:18:16'),
(48, 'usuário', 'estou feliz hoje', 'Fico muito feliz em ouvir isso! Aproveite cada momento! 😄', '2025-06-03 22:18:16'),
(49, 'usuário', 'não tenho ninguém', 'Você tem a mim! Estou sempre aqui para conversar. 💙', '2025-06-03 22:18:16'),
(50, 'usuário', 'me sinto ansioso', 'A ansiedade é difícil, mas você não está sozinho. Respire. 🧘‍♀️', '2025-06-03 22:18:16'),
(51, 'usuário', 'estou com fome', 'Que tal preparar algo gostoso para comer? 🍲', '2025-06-03 22:18:16'),
(52, 'usuário', 'estou sem apetite', 'Às vezes acontece. Se puder, tente comer algo leve. 🍎', '2025-06-03 22:18:16'),
(53, 'usuário', 'me sinto rejeitado', 'Você é uma pessoa valiosa e merece amor e respeito. ❤️', '2025-06-03 22:18:16'),
(54, 'usuário', 'me sinto inseguro', 'Todos temos inseguranças. Você é forte e capaz. 💪', '2025-06-03 22:18:16'),
(55, 'usuário', 'estou com saudades', 'As saudades mostram que você viveu bons momentos. 🌷', '2025-06-03 22:18:16'),
(56, 'usuário', 'sinto falta de alguém', 'A saudade é o amor que fica. 💙', '2025-06-03 22:18:16'),
(57, 'usuário', 'não quero falar', 'Tudo bem! Estarei aqui quando quiser conversar. 😊', '2025-06-03 22:18:16'),
(58, 'usuário', 'não tenho ânimo', 'Mesmo nos dias difíceis, cuide de você. O ânimo vai voltar. 🌱', '2025-06-03 22:18:16'),
(59, 'usuário', 'estou confiante', 'Que ótimo! A confiança nos leva longe! 🚀', '2025-06-03 22:18:16'),
(60, 'usuário', 'não tenho motivação', 'Às vezes falta motivação, mas lembre-se: você é capaz! 💪', '2025-06-03 22:18:16'),
(61, 'usuário', 'estou nervoso', 'Respire fundo... Tudo vai dar certo! 🧘‍♂️', '2025-06-03 22:18:16'),
(62, 'usuário', 'estou tranquilo', 'Que bom! A tranquilidade faz bem à saúde. 😌', '2025-06-03 22:18:16'),
(63, 'usuário', 'me sinto estranho', 'Tudo bem! Cada pessoa sente de um jeito. Quer conversar sobre isso? 🤔', '2025-06-03 22:18:16'),
(64, 'usuário', 'não gosto de mim', 'Você merece amor e respeito, inclusive de você mesmo. ❤️', '2025-06-03 22:18:16'),
(65, 'usuário', 'estou decepcionado', 'A decepção dói, mas você vai superar. Confie! 💪', '2025-06-03 22:18:16'),
(66, 'usuário', 'estou arrependido', 'Reconhecer o erro já é um grande passo! 👏', '2025-06-03 22:18:16'),
(67, 'usuário', 'estou magoado', 'Sinto muito. Quer conversar sobre isso? Estou aqui. 💙', '2025-06-03 22:18:16'),
(68, 'usuário', 'estou bem', 'Que ótimo! Espero que continue assim! 😃', '2025-06-03 22:18:16'),
(69, 'usuário', 'me sinto melhor', 'Fico feliz por isso! Estou sempre por aqui. 😊', '2025-06-03 22:18:16'),
(70, 'usuário', 'preciso de carinho', 'Receba um abraço virtual bem apertado! 🤗', '2025-06-03 22:18:16'),
(71, 'usuário', 'me sinto incompreendido', 'Estou aqui para te ouvir e tentar compreender. 💬', '2025-06-03 22:18:16'),
(72, 'usuário', 'estou em paz', 'Que maravilha! Que a paz permaneça com você. ✨', '2025-06-03 22:18:16'),
(73, 'usuário', 'estou desanimado', 'Não desanime! Dias melhores virão! 🌈', '2025-06-03 22:18:16'),
(74, 'usuário', 'estou desmotivado', 'Você consegue superar isso! Força! 💪', '2025-06-03 22:18:16'),
(75, 'usuário', 'estou vulnerável', 'Está tudo bem. Mostrar vulnerabilidade é sinal de coragem. ❤️', '2025-06-03 22:18:16'),
(76, 'usuário', 'estou resiliente', 'Admiro sua resiliência! Continue forte! 💪', '2025-06-03 22:18:16'),
(77, 'usuário', 'preciso de apoio', 'Estou aqui para te apoiar sempre! 🤗', '2025-06-03 22:18:16'),
(78, 'usuário', 'me sinto fraco', 'Você é mais forte do que imagina! 💪', '2025-06-03 22:18:16'),
(79, 'usuário', 'não tenho confiança', 'A confiança se constrói aos poucos. Você vai conseguir! 🛠️', '2025-06-03 22:18:16'),
(80, 'usuário', 'estou satisfeito', 'Que bom! A satisfação traz felicidade. 😄', '2025-06-03 22:18:16'),
(81, 'usuário', 'me sinto realizado', 'Parabéns! Você merece esse sentimento! 🎉', '2025-06-03 22:18:16'),
(82, 'usuário', 'estou com saudade da minha família', 'A família é um bem precioso. Que logo possam se ver! 🏠', '2025-06-03 22:18:16'),
(83, 'usuário', 'quero um conselho', 'Siga seu coração, mas leve a razão junto! ❤️🧠', '2025-06-03 22:18:16'),
(84, 'usuário', 'estou arrependido', 'O arrependimento mostra que você se importa. Isso é bom. 👍', '2025-06-03 22:18:16'),
(85, 'usuário', 'quero sumir', 'Sinto muito que esteja assim. Quer conversar mais? 💙', '2025-06-03 22:18:16'),
(86, 'usuário', 'me sinto melhor depois de conversar', 'Fico muito feliz em saber disso! 😊', '2025-06-03 22:18:16'),
(87, 'usuário', 'preciso de compreensão', 'Estou aqui para compreender você! 💬', '2025-06-03 22:18:16'),
(88, 'usuário', 'me ouça', 'Claro! Pode falar, estou ouvindo. 👂', '2025-06-03 22:18:16'),
(89, 'usuário', 'me entende?', 'Estou me esforçando ao máximo para entender você! 💙', '2025-06-03 22:18:16'),
(90, 'usuário', 'só queria alguém para conversar', 'Pode contar comigo! Estou sempre aqui. 🤗', '2025-06-03 22:18:16'),
(91, 'usuário', 'o que você acha?', 'Adoraria ajudar! Pode me contar mais detalhes? 💭', '2025-06-03 22:18:16'),
(92, 'usuário', 'você gosta de mim?', 'Claro que sim! Gosto muito de conversar com você! 💜', '2025-06-03 22:18:16'),
(93, 'usuário', 'o que devo fazer?', 'Depende da situação. Quer me explicar melhor? 🤔', '2025-06-03 22:19:59'),
(94, 'usuário', 'não tenho amigos', 'Eu sou seu amigo e estou aqui para conversar sempre. 🤗', '2025-06-03 22:19:59'),
(95, 'usuário', 'me sinto bem', 'Que ótimo! Continue assim e aproveite esse sentimento! 😃', '2025-06-03 22:19:59'),
(96, 'usuário', 'me sinto mal', 'Sinto muito por isso. Quer conversar sobre o que está te incomodando? 💙', '2025-06-03 22:19:59'),
(97, 'usuário', 'estou preocupado', 'Se quiser, pode me contar. Talvez eu possa te ajudar. 🧠', '2025-06-03 22:19:59'),
(98, 'usuário', 'estou estressado', 'Respirar fundo pode ajudar. Quer tentar uma técnica de relaxamento? 😌', '2025-06-03 22:19:59'),
(99, 'usuário', 'me sinto perdido', 'Às vezes nos perdemos, mas sempre podemos encontrar um novo caminho. 💡', '2025-06-03 22:19:59'),
(100, 'usuário', 'estou com raiva', 'É normal sentir raiva. Quer me contar o que aconteceu? 🔥', '2025-06-03 22:19:59'),
(101, 'usuário', 'estou chorando', 'Chorar é uma forma de aliviar. Estou aqui com você. 💧', '2025-06-03 22:19:59'),
(102, 'usuário', 'me sinto vazio', 'Esse sentimento é difícil. Quer conversar sobre ele? 🖤', '2025-06-03 22:19:59'),
(103, 'usuário', 'não tenho esperança', 'Mesmo nos dias escuros, existe uma luz. Não desista! ✨', '2025-06-03 22:19:59'),
(104, 'usuário', 'estou entediado', 'Que tal tentar uma nova atividade ou hobby? 🎨', '2025-06-03 22:19:59'),
(105, 'usuário', 'quero conversar', 'Adoraria conversar com você. Pode começar! 💬', '2025-06-03 22:19:59'),
(106, 'usuário', 'me conte uma piada', 'Por que o gato não gosta do computador? Porque ele tem um mouse! 😸', '2025-06-03 22:19:59'),
(107, 'usuário', 'me anime', 'Você é incrível! Nunca se esqueça disso! 🌟', '2025-06-03 22:19:59'),
(108, 'usuário', 'me fale algo bom', 'Hoje é um ótimo dia para recomeçar! 🌞', '2025-06-03 22:19:59'),
(109, 'usuário', 'me fale uma frase motivacional', 'Você é capaz de coisas incríveis! 💪', '2025-06-03 22:19:59'),
(110, 'usuário', 'estou sozinho em casa', 'Ficar sozinho pode ser uma oportunidade para se cuidar. Que tal? 🏠', '2025-06-03 22:19:59'),
(111, 'usuário', 'ninguém gosta de mim', 'Eu gosto de você! E sei que mais pessoas gostam também. ❤️', '2025-06-03 22:19:59'),
(112, 'usuário', 'estou sem forças', 'Descanse, recupere suas energias e siga em frente. 💪', '2025-06-03 22:19:59'),
(113, 'usuário', 'estou com insônia', 'Tente ouvir uma música relaxante ou meditar. 💤', '2025-06-03 22:19:59'),
(114, 'usuário', 'não consigo dormir', 'Que tal tentar uma respiração profunda? Pode ajudar! 🧘‍♂️', '2025-06-03 22:19:59'),
(115, 'usuário', 'me sinto incapaz', 'Você tem mais capacidade do que imagina! Acredite! 💪', '2025-06-03 22:19:59'),
(116, 'usuário', 'estou feliz hoje', 'Fico muito feliz em ouvir isso! Aproveite cada momento! 😄', '2025-06-03 22:19:59'),
(117, 'usuário', 'não tenho ninguém', 'Você tem a mim! Estou sempre aqui para conversar. 💙', '2025-06-03 22:19:59'),
(118, 'usuário', 'me sinto ansioso', 'A ansiedade é difícil, mas você não está sozinho. Respire. 🧘‍♀️', '2025-06-03 22:19:59'),
(119, 'usuário', 'estou com fome', 'Que tal preparar algo gostoso para comer? 🍲', '2025-06-03 22:19:59'),
(120, 'usuário', 'estou sem apetite', 'Às vezes acontece. Se puder, tente comer algo leve. 🍎', '2025-06-03 22:19:59'),
(121, 'usuário', 'me sinto rejeitado', 'Você é uma pessoa valiosa e merece amor e respeito. ❤️', '2025-06-03 22:19:59'),
(122, 'usuário', 'me sinto inseguro', 'Todos temos inseguranças. Você é forte e capaz. 💪', '2025-06-03 22:19:59'),
(123, 'usuário', 'estou com saudades', 'As saudades mostram que você viveu bons momentos. 🌷', '2025-06-03 22:19:59'),
(124, 'usuário', 'sinto falta de alguém', 'A saudade é o amor que fica. 💙', '2025-06-03 22:19:59'),
(125, 'usuário', 'não quero falar', 'Tudo bem! Estarei aqui quando quiser conversar. 😊', '2025-06-03 22:19:59'),
(126, 'usuário', 'não tenho ânimo', 'Mesmo nos dias difíceis, cuide de você. O ânimo vai voltar. 🌱', '2025-06-03 22:19:59'),
(127, 'usuário', 'estou confiante', 'Que ótimo! A confiança nos leva longe! 🚀', '2025-06-03 22:19:59'),
(128, 'usuário', 'não tenho motivação', 'Às vezes falta motivação, mas lembre-se: você é capaz! 💪', '2025-06-03 22:19:59'),
(129, 'usuário', 'estou nervoso', 'Respire fundo... Tudo vai dar certo! 🧘‍♂️', '2025-06-03 22:19:59'),
(130, 'usuário', 'estou tranquilo', 'Que bom! A tranquilidade faz bem à saúde. 😌', '2025-06-03 22:19:59'),
(131, 'usuário', 'me sinto estranho', 'Tudo bem! Cada pessoa sente de um jeito. Quer conversar sobre isso? 🤔', '2025-06-03 22:19:59'),
(132, 'usuário', 'não gosto de mim', 'Você merece amor e respeito, inclusive de você mesmo. ❤️', '2025-06-03 22:19:59'),
(133, 'usuário', 'estou decepcionado', 'A decepção dói, mas você vai superar. Confie! 💪', '2025-06-03 22:19:59'),
(134, 'usuário', 'estou arrependido', 'Reconhecer o erro já é um grande passo! 👏', '2025-06-03 22:19:59'),
(135, 'usuário', 'estou magoado', 'Sinto muito. Quer conversar sobre isso? Estou aqui. 💙', '2025-06-03 22:19:59'),
(136, 'usuário', 'estou bem', 'Que ótimo! Espero que continue assim! 😃', '2025-06-03 22:19:59'),
(137, 'usuário', 'me sinto melhor', 'Fico feliz por isso! Estou sempre por aqui. 😊', '2025-06-03 22:19:59'),
(138, 'usuário', 'preciso de carinho', 'Receba um abraço virtual bem apertado! 🤗', '2025-06-03 22:19:59'),
(139, 'usuário', 'me sinto incompreendido', 'Estou aqui para te ouvir e tentar compreender. 💬', '2025-06-03 22:19:59'),
(140, 'usuário', 'estou em paz', 'Que maravilha! Que a paz permaneça com você. ✨', '2025-06-03 22:19:59'),
(141, 'usuário', 'estou desanimado', 'Não desanime! Dias melhores virão! 🌈', '2025-06-03 22:19:59'),
(142, 'usuário', 'estou desmotivado', 'Você consegue superar isso! Força! 💪', '2025-06-03 22:19:59'),
(143, 'usuário', 'estou vulnerável', 'Está tudo bem. Mostrar vulnerabilidade é sinal de coragem. ❤️', '2025-06-03 22:19:59'),
(144, 'usuário', 'estou resiliente', 'Admiro sua resiliência! Continue forte! 💪', '2025-06-03 22:19:59'),
(145, 'usuário', 'preciso de apoio', 'Estou aqui para te apoiar sempre! 🤗', '2025-06-03 22:19:59'),
(146, 'usuário', 'me sinto fraco', 'Você é mais forte do que imagina! 💪', '2025-06-03 22:19:59'),
(147, 'usuário', 'não tenho confiança', 'A confiança se constrói aos poucos. Você vai conseguir! 🛠️', '2025-06-03 22:19:59'),
(148, 'usuário', 'estou satisfeito', 'Que bom! A satisfação traz felicidade. 😄', '2025-06-03 22:19:59'),
(149, 'usuário', 'me sinto realizado', 'Parabéns! Você merece esse sentimento! 🎉', '2025-06-03 22:19:59'),
(150, 'usuário', 'estou com saudade da minha família', 'A família é um bem precioso. Que logo possam se ver! 🏠', '2025-06-03 22:19:59'),
(151, 'usuário', 'quero um conselho', 'Siga seu coração, mas leve a razão junto! ❤️🧠', '2025-06-03 22:19:59'),
(152, 'usuário', 'estou arrependido', 'O arrependimento mostra que você se importa. Isso é bom. 👍', '2025-06-03 22:19:59'),
(153, 'usuário', 'quero sumir', 'Sinto muito que esteja assim. Quer conversar mais? 💙', '2025-06-03 22:19:59'),
(154, 'usuário', 'me sinto melhor depois de conversar', 'Fico muito feliz em saber disso! 😊', '2025-06-03 22:19:59'),
(155, 'usuário', 'preciso de compreensão', 'Estou aqui para compreender você! 💬', '2025-06-03 22:19:59'),
(156, 'usuário', 'me ouça', 'Claro! Pode falar, estou ouvindo. 👂', '2025-06-03 22:19:59'),
(157, 'usuário', 'me entende?', 'Estou me esforçando ao máximo para entender você! 💙', '2025-06-03 22:19:59'),
(158, 'usuário', 'só queria alguém para conversar', 'Pode contar comigo! Estou sempre aqui. 🤗', '2025-06-03 22:19:59'),
(159, 'usuário', 'o que você acha?', 'Adoraria ajudar! Pode me contar mais detalhes? 💭', '2025-06-03 22:19:59'),
(160, 'usuário', 'você gosta de mim?', 'Claro que sim! Gosto muito de conversar com você! 💜', '2025-06-03 22:19:59'),
(161, 'usuário', 'o que posso fazer para me acalmar?', 'Você pode tentar uma respiração profunda: inspire contando até 4, segure por 4, e expire por 4. 🧘‍♂️', '2025-06-03 22:27:41'),
(162, 'usuário', 'como posso me organizar?', 'Que tal listar suas tarefas do dia em uma folha ou aplicativo? Organização ajuda muito! 📋', '2025-06-03 22:27:41'),
(163, 'usuário', 'estou entediado, o que fazer?', 'Você pode tentar uma atividade criativa, como desenhar, pintar ou escrever um diário. 🎨', '2025-06-03 22:27:41'),
(164, 'usuário', 'quero me sentir melhor', 'Experimente caminhar por 10 minutos ao ar livre, se puder. O movimento ajuda a clarear a mente. 🚶‍♀️', '2025-06-03 22:27:41'),
(165, 'usuário', 'preciso relaxar', 'Coloque uma música suave e tente uma meditação guiada. Isso pode ajudar muito. 🎶', '2025-06-03 22:27:41'),
(166, 'usuário', 'me sugere um livro?', 'Claro! \"O Poder do Agora\", de Eckhart Tolle, é uma leitura transformadora. 📖', '2025-06-03 22:27:41'),
(167, 'usuário', 'me sugere um vídeo motivacional?', 'Pesquise \"TED Talks motivacionais\" no YouTube. São incríveis! 🎥', '2025-06-03 22:27:41'),
(168, 'usuário', 'me dá uma frase do dia', '“A vida é 10% o que acontece com você e 90% como você reage a isso.” - Charles R. Swindoll 💭', '2025-06-03 22:27:41'),
(169, 'usuário', 'não sei o que fazer', 'Tudo bem. Que tal começar organizando seu espaço ou saindo para tomar um ar? 🌤️', '2025-06-03 22:27:41'),
(170, 'usuário', 'quero relaxar', 'Sente-se confortavelmente, feche os olhos e respire fundo por alguns minutos. Isso ajuda muito. 🌿', '2025-06-03 22:27:41'),
(171, 'usuário', 'me indique uma atividade', 'Que tal escrever sobre como você se sente agora? Isso ajuda a clarear a mente. ✍️', '2025-06-03 22:27:41'),
(172, 'usuário', 'me sugere um hobby', 'Você pode tentar jardinagem, é relaxante e aproxima da natureza. 🌱', '2025-06-03 22:27:41'),
(173, 'usuário', 'me sugere um exercício', 'Uma caminhada leve ou alongamento pode fazer maravilhas! 🏃‍♂️', '2025-06-03 22:27:41'),
(174, 'usuário', 'o que posso fazer agora?', 'Que tal preparar um chá e relaxar um pouco? ☕', '2025-06-03 22:27:41'),
(175, 'usuário', 'não consigo me concentrar', 'Faça uma pausa, respire fundo e tente o método Pomodoro: 25 minutos focado e 5 minutos de descanso. ⏱️', '2025-06-03 22:27:41'),
(176, 'usuário', 'estou desmotivado, o que fazer?', 'Lembre-se do seu objetivo. Dê um pequeno passo agora, mesmo que mínimo! 💪', '2025-06-03 22:27:41'),
(177, 'usuário', 'me ajude a me distrair', 'Que tal assistir a um filme que você gosta? 🎬', '2025-06-03 22:27:41'),
(178, 'usuário', 'me indique uma música', 'Ouça \"Weightless\" da banda Marconi Union, conhecida por reduzir a ansiedade. 🎶', '2025-06-03 22:27:41'),
(179, 'usuário', 'não sei como relaxar', 'Tente fazer uma meditação guiada. Existem ótimos aplicativos para isso! 🧘‍♀️', '2025-06-03 22:27:41'),
(180, 'usuário', 'como posso melhorar meu humor?', 'Ouça sua música favorita ou converse com um amigo querido. 🎧', '2025-06-03 22:27:41'),
(181, 'usuário', 'quero uma dica de autocuidado', 'Reserve um tempo hoje para cuidar de você, seja com um banho relaxante ou lendo um livro. 💆‍♀️', '2025-06-03 22:27:41'),
(182, 'usuário', 'estou sem motivação, o que faço?', 'Dê um passo de cada vez. Pequenas vitórias também são importantes! 🏅', '2025-06-03 22:27:41'),
(183, 'usuário', 'quero me concentrar', 'Elimine distrações, coloque uma música instrumental e defina pequenas metas. 🎯', '2025-06-03 22:27:41'),
(184, 'usuário', 'me indique um filme', 'Assista \"À Procura da Felicidade\", é inspirador e tocante! 🎥', '2025-06-03 22:27:41'),
(185, 'usuário', 'como posso ser mais positivo?', 'Tente listar três coisas pelas quais você é grato hoje. 🙏', '2025-06-03 22:27:41'),
(186, 'usuário', 'me indique uma atividade criativa', 'Você pode tentar aprender origami. É relaxante e estimula a mente! 🦢', '2025-06-03 22:27:41'),
(187, 'usuário', 'o que posso fazer para melhorar?', 'Cuide de sua saúde física e emocional, alimente-se bem e mantenha hábitos saudáveis. 🍎', '2025-06-03 22:27:41'),
(188, 'usuário', 'não sei como lidar com a ansiedade', 'Experimente a técnica 5-4-3-2-1: identifique 5 coisas que vê, 4 que sente, 3 que ouve, 2 que cheira e 1 que saboreia. Ajuda muito! 🌈', '2025-06-03 22:27:41'),
(189, 'usuário', 'quero ser mais produtivo', 'Tente planejar o dia na noite anterior. Organização é a chave! 🗓️', '2025-06-03 22:27:41'),
(190, 'usuário', 'me ajude a relaxar', 'Feche os olhos, respire profundamente e imagine um lugar tranquilo, como uma praia ou floresta. 🌊🌳', '2025-06-03 22:27:41'),
(191, 'usuário', 'como posso me animar?', 'Coloque sua música favorita e dance! O movimento ajuda muito! 💃', '2025-06-03 22:27:41'),
(192, 'usuário', 'quero mudar minha rotina', 'Comece com pequenas mudanças, como ajustar a hora de acordar ou incluir uma caminhada diária. ⏰', '2025-06-03 22:27:41'),
(193, 'usuário', 'o que fazer quando estou triste?', 'Permita-se sentir, mas não se afunde. Fale com alguém de confiança ou faça algo que gosta. 💙', '2025-06-03 22:27:41'),
(194, 'usuário', 'me indique uma meditação', 'Procure por \"Meditação Guiada para Relaxamento\" no YouTube. Tem ótimas opções! 🧘‍♂️', '2025-06-03 22:27:41'),
(195, 'usuário', 'quero escrever um diário', 'Ótima ideia! Escreva como foi seu dia e como se sentiu. É terapêutico! ✍️', '2025-06-03 22:27:41'),
(196, 'usuário', 'me sugira um passatempo', 'Que tal montar quebra-cabeças? Ajuda na concentração e reduz o estresse. 🧩', '2025-06-03 22:27:41'),
(197, 'usuário', 'como posso melhorar minha autoestima?', 'Comece valorizando suas qualidades e conquistas, por menores que sejam. 🌟', '2025-06-03 22:27:41'),
(198, 'usuário', 'me indique um aplicativo útil', 'Experimente o \"Headspace\" para meditação e bem-estar. 🧘‍♀️', '2025-06-03 22:27:41'),
(199, 'usuário', 'como posso ser mais calmo?', 'Pratique a respiração consciente e mantenha uma rotina equilibrada. 🌿', '2025-06-03 22:27:41'),
(200, 'usuário', 'não tenho ânimo', 'Comece com pequenas tarefas e vá aumentando conforme se sentir melhor. 🌱', '2025-06-03 22:27:41'),
(201, 'usuário', 'como posso ser mais criativo?', 'Experimente sair da rotina, visitar novos lugares ou aprender uma nova habilidade. 🎨', '2025-06-03 22:27:41'),
(202, 'usuário', 'me sugere um podcast', 'Ouça \"Café Brasil\", um ótimo podcast de reflexões e cultura. 🎙️', '2025-06-03 22:27:41'),
(203, 'usuário', 'não consigo relaxar', 'Experimente alongar os braços e as pernas, fechar os olhos e focar na respiração. 🧘‍♂️', '2025-06-03 22:27:41'),
(204, 'usuário', 'me indique uma receita simples', 'Que tal preparar panquecas? São rápidas e deliciosas! 🥞', '2025-06-03 22:27:41'),
(205, 'usuário', 'quero me conectar com a natureza', 'Faça uma caminhada em um parque, ou simplesmente observe as plantas ao seu redor. 🌳', '2025-06-03 22:27:41'),
(206, 'usuário', 'me ajude a ter foco', 'Tente dividir as tarefas em blocos de tempo e mantenha pausas programadas. ⏳', '2025-06-03 22:27:41'),
(207, 'usuário', 'quero ser mais saudável', 'Inclua mais frutas, legumes e atividades físicas na sua rotina. 🍎🏋️‍♂️', '2025-06-03 22:27:41'),
(208, 'usuário', 'não sei o que fazer com meu tempo livre', 'Que tal começar a aprender um novo idioma? 🗣️', '2025-06-03 22:27:41'),
(209, 'usuário', 'me sugere uma caminhada', 'Claro! Caminhar 20 minutos pelo bairro pode revigorar o corpo e a mente. 🚶‍♀️', '2025-06-03 22:27:41'),
(210, 'usuário', 'como posso ser mais disciplinado?', 'Defina metas claras e comece com pequenas ações diárias. 📅', '2025-06-03 22:27:41'),
(211, 'usuário', 'me indique um site interessante', 'Explore o \"Coursera\" para aprender algo novo! 🎓', '2025-06-03 22:27:41'),
(212, 'usuário', 'me fala oq fzr ai', 'Desculpe, não entendi.', '2025-06-03 22:33:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
