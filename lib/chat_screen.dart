import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Chat Screen", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
    );
  }
}