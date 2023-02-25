import 'package:flutter/material.dart';
class Dokme extends StatefulWidget {
  bool onhover;
  String title;
  Color colorSecondery;
  Color colorPremary;
  double radiusMin;
  double radiusMax;
  Color textColorTwo;
  Color textColorOne;
  double fontSizeOneMax;
  double fontSizeTwoMin;
  double sizeDokmeWidth;
  double sizeDokmeHeight;
  int timeAnimatedDokme;
  VoidCallback onTap;

  Dokme({
    Key? key,
    required this.onhover,
    required this.title,
    required this.colorSecondery,
    required this.colorPremary,
    required this.radiusMin,
    required this.radiusMax,
    required this.textColorTwo,
    required this.textColorOne,
    required this.fontSizeOneMax,
    required this.fontSizeTwoMin,
    required this.sizeDokmeWidth,
    required this.sizeDokmeHeight,
    required this.timeAnimatedDokme,
    required this.onTap,
  }) : super(key: key);

  @override
  State<Dokme> createState() => _DokmeState();
}

class _DokmeState extends State<Dokme> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: widget.sizeDokmeWidth,
      height:widget.sizeDokmeHeight,
      decoration: BoxDecoration(
          color: widget.onhover == true
              ? widget.colorSecondery
              : widget.colorPremary,
          borderRadius: widget.onhover == true
              ? BorderRadius.circular(widget.radiusMax)
              : BorderRadius.circular(widget.radiusMin)),
      duration: Duration(milliseconds: widget.timeAnimatedDokme),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: widget.onTap,
        onHover: (value) {
          widget.onhover = value;
          setState(() {});
        },
        hoverColor: Colors.grey,
        child: Center(
            child: Text(
          widget.title,
          style: TextStyle(
              color: widget.onhover ? widget.textColorTwo : widget.textColorOne,
              fontSize: widget.onhover == true
                  ? widget.fontSizeOneMax
                  : widget.fontSizeTwoMin),
        )),
      ),
    );
  }
}
