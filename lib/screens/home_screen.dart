import 'package:flutter/material.dart';

import 'color_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget yellowScreen = ColorScreen();
  Color clr = Colors.lightBlue;

  @override
  void initState() {
    // TODO: implement initState
    yellowScreen = ColorScreen();
    super.initState();
  }

  void setColor (Color c) {
    setState(() {
      clr = c;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("The Instrument")),
      ),
      body: Container(
        color: clr,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Yellow"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ColorScreen())
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
