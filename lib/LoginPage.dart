import 'package:QAQ/animations/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'MessagePage.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    String username;
    String userpassword;
    return Scaffold(
      backgroundColor: Color.fromRGBO(85, 198, 121, 1),
      resizeToAvoidBottomPadding: false,
      body: Container(
          // padding: EdgeInsets.all(30),
          child: Stack(
        children: <Widget>[
          Positioned(
            bottom: -200,
            left: 0,
            child: FadeAnimation(
                1,
                Container(
                  width: _width,
                  height: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/two.png'),
                          fit: BoxFit.cover)),
                )),
          ),
          Positioned(
            bottom: -250,
            left: 0,
            child: FadeAnimation(
                1.5,
                Container(
                  width: _width,
                  height: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/two.png'),
                          fit: BoxFit.cover)),
                )),
          ),
          Positioned(
            bottom: -300,
            left: 0,
            child: FadeAnimation(
                2,
                Container(
                  width: _width,
                  height: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/two.png'),
                          fit: BoxFit.cover)),
                )),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FadeAnimation(
                  1,
                  Text(
                    'QAQ Chat',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 40),
                  )),
              FadeAnimation(
                  1.2,
                  Text(
                    'Please login',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 16),
                  )),
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  1.5,
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[300]))),
                          child: TextField(
                            controller: _nameController,
                            onChanged: (_value){
                              username = _value;
                            },
                            style: TextStyle(fontFamily: 'Raleway'),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(.8)),
                                hintText: "Your Name"),
                          ),
                        ),
                        Container(
                          child: TextField(
                            controller: _passwdController,
                            onChanged: (_value) {
                              userpassword = _value;
                            },
                            obscureText: true,
                            style: TextStyle(fontFamily: 'Raleway'),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(.8)),
                                hintText: "Your Password"),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  1.8,
                  Center(
                    child: Container(
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
                                Icons.done,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                print(username);
                                print(userpassword);
                                _nameController.text = '';
                                _passwdController.text = '';
                                // login
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MessagePage()),
                                );
                              })),
                    ),
                  )),
            ],
          ),
          )
        ],
      )),
    );
  }
}
