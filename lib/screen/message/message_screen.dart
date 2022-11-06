import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/message/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessameScreen extends StatelessWidget {
  const MessameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
            SizedBox(
              width: kDefaultPadding * 0.75,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'kristin Watson',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Active 3m ago',
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
        ],
      ),
      body: Body(),
    );
  }
}
