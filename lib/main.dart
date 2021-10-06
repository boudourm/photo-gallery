import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images talk louder than words"),
        backgroundColor: Colors.red[400],
        centerTitle: true,
      ),
      body: Center(
          child: Text(
            "This app is in developping mode",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
              letterSpacing: 2,
              wordSpacing: 5
            ),)
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.assistant_navigation),
        onPressed: (){
          print("i am clicked");
        },
      ),
    );
  }
}
