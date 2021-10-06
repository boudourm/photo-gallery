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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: Image.asset(
                  "images/hqdefault.jpg")
          ),
          Text("This is a photo gallery mobile app"),
          ElevatedButton.icon(
              onPressed: (){print("add");},
              label: Text("add"),
              icon: Icon(Icons.assistant)
          )
        ],
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
