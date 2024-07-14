import 'package:flutter/material.dart';
import 'package:post_api/model/user_model.dart';
import 'package:post_api/pages/home_page.dart';
import 'service/api_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
