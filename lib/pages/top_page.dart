import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/pages/talk_room_page.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<User> userList = [
    User(
        name: '田中',
        uid: 'abc',
        imagePath:
            'https://blogger.googleusercontent.com/img/a/AVvXsEi4yr6eq4vg1mqFr9ibEB2oaB_UO6NkoIrI1xEaWi3KRJu5vIz021v3_c5XlIZEu-Jx5BLWVpT0D6qCYtmxLX_DByYw60muBsI-ZR4GvIzXKJ9LkdjvrxaaCneqIdfMtV95a69Rsflp5dkCJ9X85m_O35-rq1AufqeBVJZ3lKa191jeqFtCYVebYwM6qQ=s614',
        lastMessage: 'こんにちわ'),
    User(
        name: '佐藤',
        uid: 'def',
        imagePath:
            'https://blogger.googleusercontent.com/img/a/AVvXsEi4yr6eq4vg1mqFr9ibEB2oaB_UO6NkoIrI1xEaWi3KRJu5vIz021v3_c5XlIZEu-Jx5BLWVpT0D6qCYtmxLX_DByYw60muBsI-ZR4GvIzXKJ9LkdjvrxaaCneqIdfMtV95a69Rsflp5dkCJ9X85m_O35-rq1AufqeBVJZ3lKa191jeqFtCYVebYwM6qQ=s614',
        lastMessage: 'ありがとう'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('チャットアプリ')),
      body: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (contesxt, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TalkRoomPage(userList[index].name)));
              },
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: userList[index].imagePath == null
                            ? null
                            : NetworkImage(userList[index].imagePath!),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          userList[index].name,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          userList[index].lastMessage,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
