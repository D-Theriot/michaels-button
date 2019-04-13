import 'package:flutter/material.dart';
import 'package:michael_jeopardy/jeopardy.dart';

void main() {
  runApp(MaterialApp(
    title: "Michael's Personal Jeopardy App",
    debugShowCheckedModeBanner: false,
    home: Jeopardy(),
  ));
}