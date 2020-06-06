import 'package:flutter/material.dart';
import '../models/ChatModel.dart';

class ChatRoomList extends StatelessWidget {
  final ChatRoom chatRoom;

  ChatRoomList({this.chatRoom});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500],
            blurRadius: 10
          )
        ]
      ),
      // elevation: 2.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: ListTile(
          leading:  CircleAvatar(
              child: Text('U'),
              radius: 30,
            ),
          
          title: Text(
            chatRoom.sender.name,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Raleway",
            ),
          ),
          subtitle: Text(
                  chatRoom.messages.last.text,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 14.0,
                  ),
          ),
          trailing: Text(
            chatRoom.messages.last.time,
            style: TextStyle(fontFamily: 'Raleway', color: Colors.black),
          ),
        ),
      ),
    );
  }
}
