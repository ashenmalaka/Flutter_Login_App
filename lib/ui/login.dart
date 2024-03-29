import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return new LoginState();
  }
}
    
class LoginState extends State<Login>{

  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _welcomeString = "";

  void _erase(){
    
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  void _welcomeName(){

    setState(() {
      if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty){
        _welcomeString = _userController.text;
      }else{
        _welcomeString = "Nothing";
      }
    });
  }

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
        child: new ListView(
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
              height: 180.0,
              width: 380.0,
              color: Colors.white70,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: 'Username',
                      icon: new Icon(Icons.person),
                    ),
                  ),

                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                      hintText: 'Password',
                      icon: new Icon(Icons.lock),
                    ),

                    obscureText: true, //Secured password

                  ),

                  new Padding(padding: new EdgeInsets.all(10.5)), //Added Padding
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        //Login Button
                       new Container(
                         margin: const EdgeInsets.only(left: 38.0), //Added padding to left
                         child: new RaisedButton(
                           onPressed: () {
                             debugPrint("Login button is clicked");
                             _welcomeName();
              
                           },
                           color: Colors.redAccent,
                           child: new Text("Login",
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              )
                            ),
                         ),
                       ),
                       
                       //Clear Button
                       new Container(
                         margin: EdgeInsets.only(left: 85.0),
                         child: new RaisedButton(
                           onPressed: () {
                             debugPrint("Clear button is clicked");
                             _erase();

                           },
                          color: Colors.redAccent,
                          child: new Text("Clear",
                           style: new TextStyle(
                             color: Colors.white,
                             fontSize: 17.0,
                           ),
                          ),
                         ),
                         )
                      ],
                    ),
                  )
                ],
              ),
            ),

            new Padding(padding: new EdgeInsets.all(10.5)), //Added padding to row text
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Welcome, $_welcomeString",
                 style: new TextStyle(
                  color: Colors.white,
                  fontSize: 19.5,
                  fontWeight: FontWeight.w400,
                 )
                )
              ],
            )
          ],
        ),
      ),

    );
  }


}