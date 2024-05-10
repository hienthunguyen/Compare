// import 'package:flutter/material.dart';
// import 'dart:async';

// class ChatBoxScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('ChatBox'),
//       ),
//       body: const Center(
//         child: Text('Thông tin người dùng sẽ được hiển thị ở đây.'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Reply Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ChatBoxScreen(),
    );
  }
}

class Message {
  final String sender;
  final String content;

  Message({required this.sender, required this.content});
}

class ChatBoxScreen extends StatefulWidget {
  const ChatBoxScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatBoxScreen> {
  List<Message> messages = [];
  TextEditingController controller = TextEditingController();
  bool autoReplyDisplayed = false;
  final String greetingMessage = "Xin chào! Hãy hỏi gì đó.";

  @override
  void initState() {
    super.initState();
    // Start auto-replying after 3 seconds
    Timer(const Duration(seconds: 3), () {
      autoReply();
    });
  }

  void autoReply() {
    if (!autoReplyDisplayed) {
      setState(() {
        messages.add(Message(sender: 'A', content: "Tin nhắn tự động trả lời"));
        autoReplyDisplayed = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChatBox"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: messages.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return ListTile(
                    title: Text(greetingMessage),
                  );
                }
                final message = messages[index - 1];
                return ListTile(
                  title: Text('${message.sender}: ${message.content}'),
                );
              },
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: 'Nhập tin nhắn',
                      
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    setState(() {
                      messages.add(Message(sender: 'Q', content:controller.text));
                      controller.clear();
                      
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}