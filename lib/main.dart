import 'package:flutter/material.dart';
import 'package:innovative_task/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const Home(),
  ));
}