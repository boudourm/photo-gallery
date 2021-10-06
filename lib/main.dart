import 'package:flutter/material.dart';
import 'package:photo_gallery/space.dart';

void main() {
  runApp(MaterialApp(home: Home()));
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
      body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Card(
              elevation: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Image.asset("images/hqdefault.jpg"),
                  ),
                  Text("This is a photo gallery mobile app"),
                  TextButton.icon(
                      onPressed: (){
                        print("TextButtin pressed");
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Space()));
                      },
                      label: Text("View"),
                      icon: Icon(Icons.open_in_browser))
                ],
              ),
            )
          ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.assistant_navigation),
        onPressed: () {
          print("i am clicked");
        },
      ),
    );
  }
}
