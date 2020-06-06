import 'package:QAQ/animations/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:QAQ/models/test_data.dart';
import 'components/ChatRoomList.dart';
import 'package:QAQ/animations/ListAnimation.dart';
import 'LoginPage.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(85, 198, 121, 1),
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(85, 198, 121, 1),
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        child: Text('U'),
                        radius: 40,
                      ),
                      SizedBox(height: 20),
                      Text(Data.me.name, style: TextStyle(color: Colors.white, fontFamily: 'Raleway', fontSize: 18),)
                    ],
                  ),
                ),
              ),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.power_settings_new),
                      onPressed: () {
                        //logout

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      })
                ],
              ))
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            'QAQ Chat',
            style: TextStyle(
                fontSize: 25.0, fontFamily: 'Raleway'),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.menu,
              ),
              onPressed: () => _scaffoldKey.currentState.openDrawer()),
        ),
        floatingActionButton: Container(
          width: 80,
          height: 80,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromRGBO(94, 115, 206, .5),
          ),
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(94, 115, 206, 1)),
              child: IconButton(
                  icon: Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                  onPressed: () {})),
        ),
        body: Column(
          children: <Widget>[
            FadeAnimation(1, ClipPath(
              clipper: _myClipper(),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green[900].withOpacity(.5)
                ),
              ),
            ),),
            // SizedBox(
            //   height: 100,
            // ),
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.only(bottom: 80),
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      print(index);
                      Navigator.pushNamed(context, '/chat',
                          arguments: Data.chatRooms[index]);
                    },
                    child: ListAnimation(
                      0.3 * index,
                      ChatRoomList(
                        chatRoom: Data.chatRooms[index],
                      ),
                    ));
              },
              itemCount: Data.chatRooms.length,
            )),
          ],
        ));
  }
}


class _myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-80);
    path.lineTo(size.width , 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
} 
