import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
    
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Text(
              "Login",
              style: TextStyle(fontSize: 23),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 7, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              "Sign into your account",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 7, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              "YOUR EMAIL/PHONE NUMBER",
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.fromLTRB(25, 7, 25, 0),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.grey,
                filled: true,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 7, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              "PASSWORD",
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.fromLTRB(25, 7, 25, 0),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.grey,
                filled: true,
              ),
            ),
          ),
           SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 7, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text("Forgot Password?",style: TextStyle(fontSize: 14),),
          )
        ],
      ),
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width * 1.0,
        color: Colors.amber[400],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
