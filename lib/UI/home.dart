import 'package:flutter/material.dart';
import 'package:next_task/utils/firebase_auth.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Home Page"),
//            RaisedButton(
//              child: Text("Log out"),
//              onPressed: AuthProvider().logOut(),
//            )
          ],
        ),
      ),
    );
  }
}
