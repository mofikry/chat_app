import 'package:chat_app/constants.dart';
import 'package:chat_app/models/ChatMessage.dart';
import 'package:chat_app/screen/message/components/teext_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'chat_input_field.dart';
import 'meesage.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(
                    message: demeChatMessages[index],
                  )),
        )),
        ChatInputField()
      ],
    );
  }
}
