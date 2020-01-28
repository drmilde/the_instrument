import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  Color clr = Colors.limeAccent;

  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: widget.clr,
      ),
    );
  }
}
