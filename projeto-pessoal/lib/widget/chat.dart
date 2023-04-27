import 'package:flutter/material.dart';
import 'package:projeto03/widget/estabelecimentos.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Message> _messages = [
    Message(
      sender: 'Felipe',
      text: 'Olá! Tudo bem?',
      time: '10:00',
    ),
    Message(
      sender: 'Roberto',
      text: 'Oi! Tudo sim, e com você?',
      time: '10:01',
    ),
    Message(
      sender: 'Felipe',
      text: 'Estou bem, obrigado! Quer participar do nosso jogo?',
      time: '10:02',
    ),
    Message(
      sender: 'Roberto',
      text: 'Quero sim! Que horas?',
      time: '10:03',
    ),
    Message(
      sender: 'Felipe',
      text: 'Ás 19h',
      time: '10:05',
    ),
    Message(
      sender: 'Roberto',
      text: 'Combinado, estarei lá!',
      time: '10:06',
    ),
  ];

  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ChatBubble(
                  message: _messages[index],
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    hintText: 'Digite sua mensagem...',
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  setState(() {
                    String text = _textController.text.trim();
                    if (text.isNotEmpty) {
                      Message message = Message(
                        sender: 'Felipe',
                        text: text,
                        time: DateTime.now().toString(),
                      );
                      _messages.add(message);
                      _textController.clear();
                    }
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Message {
  String sender;
  String text;
  String time;

  Message({
    required this.sender,
    required this.text,
    required this.time,
  });
}

class ChatBubble extends StatelessWidget {
  final Message message;

  const ChatBubble({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.sender,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            message.text,
          ),
          SizedBox(height: 8),
          Text(
            message.time,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
