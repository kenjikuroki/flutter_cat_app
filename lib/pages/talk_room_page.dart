import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TalkRoomPage extends StatefulWidget {
  final String name;
  const TalkRoomPage(this.name, {super.key});

  @override
  State<TalkRoomPage> createState() => _TalkRoomPageState();
}

class _TalkRoomPageState extends State<TalkRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text('a');
      }),
    );
  }
}
