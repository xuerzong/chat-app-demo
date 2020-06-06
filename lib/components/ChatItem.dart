import 'package:QAQ/components/ChatBubble.dart';
import 'package:QAQ/models/MessageModel.dart';
import 'package:flutter/material.dart';
import 'package:QAQ/models/test_data.dart';

class ChatItem extends StatelessWidget {
  final Message message;
  final bool isContinue;

  const ChatItem({Key key, this.message, this.isContinue});

  @override
  Widget build(BuildContext context) {

    bool isMe = message.sender == Data.me;

    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end: MainAxisAlignment.start,
      children: <Widget>[
        isMe? Container() : isContinue? Container(
          padding: EdgeInsets. symmetric(horizontal: 20 ),
        ): 
        CircleAvatar(
          child: Text('U'),
        ),
        // CircleAvatar(
        //   backgroundImage: NetworkImage(message.sender.avatarUrl),
        //   radius: 20,
        // ),
        ChatBubble(
          isMe: isMe,
          isContinue: isContinue,
          message: message,
        )
      ],
    );
  }
}
