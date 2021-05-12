import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  void initState() {
    Workmanager().registerPeriodicTask(
      "1",
      "periodic Notification",
      frequency: Duration(minutes: 15),
    );

    Workmanager().registerPeriodicTask(
      "2",
      "periodic Notification at day",
      frequency: Duration(days: 1),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Main Screen' ,style: TextStyle(fontSize: 70),textAlign: TextAlign.center,),
      ),
    );
  }
}
