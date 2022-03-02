import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar : AppBar (
          title : Text ('Login Screen'
          ),
        ),
        body: Center (

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/image/Logo_UPN_Yogyakarta_Terbaru_resmi.png', height: 70 , width: 70,),
                Padding(
                  padding: EdgeInsets.only(left: 50.0,top: 50.0,right: 50.0,bottom: 20.0),
                  child: TextFormField(
                    decoration:  InputDecoration(
                      border : OutlineInputBorder(borderRadius : BorderRadius.circular(30.0)),
                      hintText: 'Username',
                      labelText: 'Nama*',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only (left: 50.0,top: 0,right: 50.0,bottom: 50.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration:  InputDecoration(
                      border : OutlineInputBorder(
                          borderRadius : BorderRadius.circular(30.0)),
                      hintText: 'Password',
                      labelText: 'Password*',
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text("Login")),
              ],
            ),

          ),
        ),
      );
  }
}
