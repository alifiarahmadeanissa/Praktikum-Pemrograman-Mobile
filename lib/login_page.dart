import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Column(
          children: [
            _pict(),
            _username(),
            _password(),
            _LoginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _pict() {
    return Container(
      padding: EdgeInsets.only(
          left: 50.0, top: 100.0, right: 50.0, bottom: 20.0),
      child: Image.asset(
        'image/Logo_UPN_Yogyakarta_Terbaru_resmi.png', height: 70,
        width: 70,),


    );
  }

  Widget _username() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      alignment: Alignment.center,
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration:  InputDecoration(
          border : OutlineInputBorder(borderRadius : BorderRadius.circular(30.0)),
          hintText: 'Username',
          labelText: 'Nama*',
        enabledBorder : OutlineInputBorder(borderRadius : BorderRadius.circular(30.0),
        borderSide :  BorderSide(color: (isLoginSuccess)
            ? Colors.blue : Colors.red),
      ),
    ),
      ),
    );
  }

  Widget _password() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          password = value;
        },
        obscureText: true,
        decoration:  InputDecoration(
          border : OutlineInputBorder(
              borderRadius : BorderRadius.circular(30.0)),
          hintText: 'Password',
          labelText: 'Password*',
        enabledBorder : OutlineInputBorder(borderRadius : BorderRadius.circular(30.0),
        borderSide :  BorderSide(color: (isLoginSuccess)
        ? Colors.blue : Colors.red),
        ),
      ),
    ),
    );
  }

  Widget _LoginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: (isLoginSuccess) ? Colors.blue: Colors.red,
        ),
        onPressed: () {
          String text = "";
          if (username == "fia" && password ==
              "fia") {
            setState(() {
              text = "Login Success";
              isLoginSuccess = true;
            });
          } else {
            setState(() {
              text = "Login Failed";
              isLoginSuccess = false;
            });
          }
          print("isLoginSuccess : $isLoginSuccess");
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Login'),
      ),
    );
  }
}
