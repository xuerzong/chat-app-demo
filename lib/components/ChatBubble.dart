import 'package:QAQ/models/MessageModel.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final bool isMe;
  final bool isContinue;
  final Message message;

  const ChatBubble({Key key, this.isMe, this.isContinue, this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        isMe ? _bubbleEnd() : Container(),
        Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: isMe ? Radius.circular(0) : Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomLeft: isMe ? Radius.circular(10) : Radius.circular(0),
              ),
              // boxShadow: [
              //   BoxShadow(
              //       color: Colors.grey[300],
              //       offset: isMe ? Offset(-2.0, 2.0) : Offset(2.0, 2.0),
              //       blurRadius: 6.0)
              // ]
            ),
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width / 1.6, minHeight: 40),
          child: Text(
            message.text,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontFamily: "Raleway"),
          ),
        ),
        isMe ? Container() : _bubbleEnd()
      ],
    );
  }

  Widget _bubbleEnd() {
    return Column(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          message.time,
          style: TextStyle(
            fontSize: 10, 
            color: Colors.white,
            fontFamily: 'Raleway'
          ),
        )
      ],
    );
  }
}
