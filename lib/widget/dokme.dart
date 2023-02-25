import 'package:flutter/material.dart';

import '../screen/page_2.dart';
class Dokme extends StatefulWidget {
  bool onhover;
  String title;
  Color colorPremary;
  Color colorSecondery;
  double radiusMin;
  double radiusMax;
  Dokme({Key? key, required this.onhover,required this.title,required this.colorPremary,required this.colorSecondery,required this.radiusMin,required this.radiusMax}) : super(key: key);

  @override
  State<Dokme> createState() => _DokmeState();
}

class _DokmeState extends State<Dokme> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 100,
      height: 50,
      decoration: BoxDecoration(color: widget.onhover==true?widget.colorPremary :widget.colorSecondery,borderRadius: widget.onhover==true?BorderRadius.circular(widget.radiusMax):BorderRadius.circular(widget.radiusMin)),
      duration: Duration(milliseconds: 500),
      child:InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: () {
          Route route=MaterialPageRoute(builder: (context)=>Page2());
          Navigator.push(context,route);
        },
        onHover:(value){
          widget.onhover=value;
          setState(() {

          });
        } ,
        hoverColor:Colors.grey,
        child: Center(child: Text(widget.title,style: TextStyle(color: widget.onhover?Colors.green:Colors.yellow,fontSize: widget.onhover==true?20:18),)),

      ),
    );
  }
}
