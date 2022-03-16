import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class Grid_movie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Film",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          _image1(),
          _Button1(context)
    ],
    ),
      );
  }
}

Widget _image1(){
  return Container(
      child: Image.network("https://image.tmdb.org/t/p/w600_and_h900_bestv2/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg"),
  );
}

Widget _Button1(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    width: MediaQuery
        .of(context)
        .size
        .width,
    child: ElevatedButton(
      child: Text('Details'),
  onPressed: () {
  Navigator. pushReplacement(
  context,
  MaterialPageRoute(builder: (context) {
  return SecondScreen();
  }
  ));
}
  ),
  );
}