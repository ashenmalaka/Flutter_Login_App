import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return new LoginState();
  }
}
    
class LoginState extends State<Login>{

  final TextEditingController _userController = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      backgroundColor: Colors.blueGrey,

      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            //image icon
            new Image.asset(
              "images/face.png",
              width: 90.0,
              height: 90.0,
              color: Colors.greenAccent,
            ),

            //form
            new Container(
              height: 200.0,
              width: 350.0,
              color: Colors.white70,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: 'Username',
                      icon: new Icon(Icons.person),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }


}