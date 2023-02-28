import 'dart:ffi';

import 'package:codewizards/screen/settting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/dokme.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool onhover = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Color(0xff5e5e5e), Color(0xef5e5e5e)],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 76,
              height: 13,
              child: Text(
                "Code Wizard",
                style: TextStyle(
                  color: Color(0xff00ffef),
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(height: 14.40),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xff00ffef),
                  width: 4,
                ),
                color: Colors.black,
              ),
            ),
            SizedBox(height: 14.40),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
              width: 113,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff00efff), Color(0x00000000)],
                ),
              ),
            ),
            SizedBox(height: 14.40),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none),
                obscureText: true,
              ),
              width: 113,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff00efff), Color(0x00000000)],
                ),
              ),
            ),
            SizedBox(height: 14.40),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                obscureText: true,
              ),
              width: 113,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff00efff), Color(0x00000000)],
                ),
              ),
            ),
            SizedBox(height: 12),
            //dokme log in
            Dokme(
              timeAnimatedDokme: 500,
              sizeDokmeHeight: 23,
              sizeDokmeWidth: 80,
              title: "LOG IN",
              colorPremary: Colors.blue,
              colorSecondery: Colors.blueAccent,
              fontSizeOneMax: 12,
              fontSizeTwoMin: 10,
              onhover: onhover,
              radiusMax: 15,
              radiusMin: 5,
              textColorOne: Colors.white,
              textColorTwo: Colors.white,
              onTap: () {},
            ),
            SizedBox(height: 10),
            //dokme setting
            Row(
              children: [
                Dokme(
                  onhover: onhover,
                  title: "",
                  colorPremary: Colors.transparent,
                  radiusMin: 3,
                  textColorOne: Colors.white,
                  fontSizeTwoMin: 17,
                  sizeDokmeWidth: 25,
                  sizeDokmeHeight: 30,
                  onTap: () {
                    Get.to(SettingPage());
                  },
                  fontSizeOneMax: 0,
                  textColorTwo: Colors.white12,
                  radiusMax: 0,
                  colorSecondery: Colors.white12,
                  timeAnimatedDokme: 0,
                  iconDokme: Icons.settings,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
