import 'package:codewizards/screen/page_2.dart';
import 'package:codewizards/widget/dokme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool onhover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
          children: [
            //dokme
            Dokme(
                onhover: onhover,
                title: "HELLO",
                colorSecondery: Colors.redAccent,
                colorPremary: Colors.purpleAccent,
                radiusMin: 5,
                radiusMax: 10,
                textColorTwo: Colors.black,
                textColorOne: Colors.white,
                fontSizeOneMax: 12,
                fontSizeTwoMin: 10,
                sizeDokmeWidth: 150,
                sizeDokmeHeight: 40,
                timeAnimatedDokme: 500,
                onTap: (){
                  Route route=MaterialPageRoute(builder: (context)=>Page2());
                  Navigator.push(context, route);
                },
            ),
          ],
        ));
  }
}
