import 'package:codewizards/screen/page_2.dart';
import 'package:codewizards/widget/dokme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool onhover=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body:
      Column(
        children: [
          //dokme
          Dokme(onhover: onhover,title: "ghabr",colorPremary: Colors.red,colorSecondery: Colors.yellow,radiusMax: 20,radiusMin: 5),
        ],
      )
    );
  }
}


