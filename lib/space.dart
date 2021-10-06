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
            Image.asset("images/hqdefault.jpg")
          ],
        ),
      )
    );
  }
}
