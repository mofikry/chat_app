import 'dart:ffi';

import 'package:chat_app/constants.dart';
import 'package:chat_app/models/ChatMessage.dart';
import 'package:chat_app/screen/message/components/teext_message.dart';
import 'package:chat_app/screen/message/components/video_message.dart';
import 'package:flutter/material.dart';

import 'audio_message.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageConatint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);

          break;
        case ChatMessageType.audio:
          return AudioMessage(
            message: message,
          );

          break;
        case ChatMessageType.video:
          return VideoMeessage();

          break;

        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            )
          ],
          SizedBox(
            width: kDefaultPadding / 3,
          ),
          messageConatint(message),
          if (message.isSender)
            MessageStateDot(
              status: message.messageStatus,
            )
        ],
      ),
    );
  }
}

class MessageStateDot extends StatelessWidget {
  const MessageStateDot({super.key, required this.status});
  final MessageStatus status;

  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return kErrorColor;

          break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);

          break;
        case MessageStatus.viewed:
          return kPrimaryColor;

          break;

        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration:
          BoxDecoration(color: dotColor(status), shape: BoxShape.circle),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
