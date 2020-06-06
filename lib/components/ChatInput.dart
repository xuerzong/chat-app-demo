import 'package:flutter/material.dart';
import 'package:QAQ/utils/Constants.dart';

class ChatInput extends StatefulWidget {

  final Function onPressed;
  ChatInput ({this.onPressed});

  @override
  _ChatInputState createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String message;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
      constraints: BoxConstraints(
        maxHeight: 150
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
             child: RawMaterialButton(
               onPressed: (){
                 
               },
               child: Icon(Icons.insert_emoticon, color: Colors.black,),
              //  fillColor: Color.fromRGBO(56,155,92,1),
               shape: CircleBorder(),
             ),
             constraints: BoxConstraints(
               maxHeight: 40,
               maxWidth: 40
             ),
          ),
          Expanded(
            child: TextField(
              style: TextStyle(
                fontFamily: 'Raleway'
              ),
              controller: _controller,
              autofocus: false,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                focusColor: Colors.white,
                filled: true,
                fillColor: Colors.grey[200],
                enabledBorder: Constants.boder,
                    disabledBorder: Constants.boder,
                    border: Constants.boder,
                    errorBorder: Constants.boder,
                    focusedErrorBorder: Constants.boder,
                    focusedBorder: Constants.boder
              ),
              onChanged: (_value) {
                message = _value;
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
             child: RawMaterialButton(
               onPressed: (){
                 setState(() {
                   widget.onPressed(message);
                   _controller.text = '';
                 });
               },
               child: Icon(Icons.send, color: Color.fromRGBO(56,155,92,1),),
              //  fillColor: Color.fromRGBO(56,155,92,1),
               shape: CircleBorder(),
             ),
             constraints: BoxConstraints(
               maxHeight: 40,
               maxWidth: 40
             ),
          ),
          // TextField(),
        ],
      ),
    );
  }
}