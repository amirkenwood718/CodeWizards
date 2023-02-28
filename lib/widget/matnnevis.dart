import 'dart:ffi';

import 'package:flutter/material.dart';

class Matn extends StatefulWidget {
  String matn;
  Color rangCoverMatn;
  Color rangMatn;
  Color rangShadowOne;
  Color rangShadowTwo;
  double sizeFont;

  Matn(
      {Key? key,
      required this.matn,
      required this.rangCoverMatn,
      required this.rangMatn,
      required this.rangShadowOne,
      required this.rangShadowTwo,
      required this.sizeFont,

      })
      : super(key: key);

  @override
  State<Matn> createState() => _MatnState();
}

class _MatnState extends State<Matn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black12,
          boxShadow: [
            BoxShadow(
                color: widget.rangCoverMatn,
                offset: Offset(0, 0),
                blurRadius: 20,
                blurStyle: BlurStyle.outer,
                spreadRadius: 2)
          ]),
      child: Text(widget.matn,
          style: TextStyle(color: widget.rangMatn, fontSize: widget.sizeFont, shadows: [
            Shadow(color: widget.rangShadowOne, blurRadius: 3, offset: Offset(2, 2)),
            Shadow(color: widget.rangShadowTwo, blurRadius: 3, offset: Offset(-2, -2))
          ])),
    );
  }
}
