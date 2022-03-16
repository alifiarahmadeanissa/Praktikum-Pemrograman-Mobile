import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Film",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          _image1(),
          _text1(),
          _trailer(context)
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

Widget _text1(){
  return Container(
    child: const Text("id: 634649"
      "\noriginal language: en"
      "\noriginal title: Spider-Man No Way Home"
      "\ntrailer: https://youtu.be/JfVOs4VSpmA"
      "\noverview: Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man."
      "\npopularity: 5383.752,")
  );
}

Widget _trailer(BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    width: MediaQuery
        .of(context)
        .size
        .width,
    child: ElevatedButton(
        child: Text('Favorite'),
        onPressed: () {
        }
    ),
  );
}
