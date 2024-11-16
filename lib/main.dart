// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
   return MyAppState();
  }

}


class MyAppState extends State<MyApp> {
  String email = "tariq@gmail.com";
  String password = "112233";
  String result = "";

  @override
  Widget build(BuildContext context) {
    TextEditingController emailText = TextEditingController();
    TextEditingController passwordText = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 50, 34, 75),
          title: Text("Login Page"),
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: const Color.fromARGB(255, 226, 216, 242),
          ),
        ),
        body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,

    children: [
      Container(
        width: 250, 
        child: TextField(
          controller: emailText,
          decoration: InputDecoration(
            labelText: "Email",
            border: OutlineInputBorder(),
            hintText: "Enter your email",
          ),
        ),
      ),

      SizedBox(height: 30),

      Container(
        width: 250, 
        child: TextField(
          controller: passwordText,
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(),
            hintText: "Enter your password",
          ),
        ),
      ),

      SizedBox(height: 30),

      Text(result),
      
      ElevatedButton(
        onPressed: () {
          setState(() {
            if (passwordText.text.trim() == password && emailText.text.trim() == email) {
              result = "Welcome to our application";
            } else {
              result = "Wrong information, try again";
            }
          });
        },
        child: Text("Submit"),
      ),
    ],
  ),
),

      ),
    );
  }
}
