import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Food App"),
        leading: IconButton(
            icon: Icon(
              Icons.supervisor_account,
              color: Colors.white,
            ),
            iconSize: 30,
            onPressed: null),
        actions: <Widget>[
          FlatButton(
              onPressed: null,
              child: Text(
                "Cart",
                style: TextStyle(color  : Colors.white),
              ))
        ],
      ),
      body: ListView(
        children: <Widget>[
          TextField()
        ],
      ),
    );
  }
}
