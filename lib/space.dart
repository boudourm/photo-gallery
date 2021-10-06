import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  const Space({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("images talk louder than the words"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Card(
        child: Column(
          children: [
            Image.asset("images/hqdefault.jpg"),
            Text("This is a Deep sea anglerfish",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    label: Text("Exit"),
                    icon: Icon(Icons.exit_to_app)),
                ElevatedButton.icon(
                    onPressed: (){
                      print("Download in progress ...");
                    },
                    label: Text("Download"),
                    icon: Icon(Icons.download))
              ],
            )
          ],
        ),
      )
    );
  }
}
