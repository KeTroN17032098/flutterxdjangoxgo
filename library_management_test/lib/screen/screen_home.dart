import "package:flutter/material.dart";

class Homescreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Management Tool'),
          backgroundColor: Colors.blue,
          leading: Container(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset('images/logo.png',
                  width: width * 0.8, height: height * 0.8),
            ),
            Padding(padding: EdgeInsets.all(width * 0.024)),
          ],
        ),
      ),
    );
  }
}
