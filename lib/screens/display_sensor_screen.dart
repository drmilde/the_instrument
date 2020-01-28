import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class DisplaySensorScreen extends StatefulWidget {
  @override
  _DisplaySensorScreenState createState() => _DisplaySensorScreenState();
}

class _DisplaySensorScreenState extends State<DisplaySensorScreen> {
  String _acc_x;
  String _acc_y;
  String _acc_z;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sensoren auslesen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("x: $_acc_x"),
          Text("y: $_acc_x"),
          Text("z: $_acc_z"),
        ],
      ),
    );
  }

  @override
  void initState() {
    accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        _acc_x = event.x.toStringAsFixed(2);
        _acc_y = event.y.toStringAsFixed(2);
        _acc_z = event.z.toStringAsFixed(2);
      });
    });
// [AccelerometerEvent (x: 0.0, y: 9.8, z: 0.0)]

    userAccelerometerEvents.listen((UserAccelerometerEvent event) {
      //print(event);
    });
// [UserAccelerometerEvent (x: 0.0, y: 0.0, z: 0.0)]

    gyroscopeEvents.listen((GyroscopeEvent event) {
      //print(event);
    });
  }
}
