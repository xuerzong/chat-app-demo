import 'package:QAQ/animations/ListAnimation.dart';
import 'package:QAQ/components/ChatInput.dart';
import 'package:QAQ/components/ChatItem.dart';
import 'package:QAQ/models/ChatModel.dart';
import 'package:QAQ/models/MessageModel.dart';
import 'package:flutter/material.dart';
import 'package:QAQ/models/test_data.dart';
import 'MessagePage.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    ChatRoom chatRoom = ModalRoute.of(context).settings.arguments;
    List<Message> messages = chatRoom.messages;

    return Scaffold(
      backgroundColor: Color.fromRGBO(85, 198, 121, 1),
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_left,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessagePage()));
              }),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            chatRoom.sender.name,
            style: TextStyle(fontFamily: 'Raleway', color: Colors.white),
          )),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              alignment: Alignment.topCenter,
              // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 80),
              padding: EdgeInsets.only(top: 80, left: 16, right: 16),
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: <Widget>[
                    for (var i = 0; i < messages.length; i++)
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: ChatItem(
                            message: messages[i],
                            isContinue: false,
                          ))
                  ],
                ),
              ),
            )),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: ListAnimation(.3, ChatInput(
                onPressed: (message) {
                  if (message != null) {
                    setState(() {
                      messages.add(Message(
                        sender: Data.me,
                        text: message,
                        time: "18:00",
                      ));
                    });
                  }
                },
              )),
            )
          ],
        ),
      ),
    );
  }
}
