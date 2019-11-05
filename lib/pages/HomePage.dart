import 'package:flutter/material.dart';
import '../event_manger.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        backgroundColor: Colors.blue,
        body: EventManager(),
        drawer: new Drawer(),
        appBar: AppBar(
          title: Image.asset('assets/app_logo.jpg', fit: BoxFit.cover),
          centerTitle: true,
          elevation: 0,
          iconTheme: new IconThemeData(color: Colors.blue),
          backgroundColor: Colors.white,
          actions: <Widget>[Icon(Icons.notifications_none)],
        ),
      ),
    );
  }
}
