import 'package:codewizards/screen/page_2.dart';
import 'package:codewizards/screen/settting_page.dart';
import 'package:codewizards/widget/dokme.dart';
import 'package:codewizards/widget/matnnevis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool onhover = false;
  bool klid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //dokme
        Row(
          children: [
            Dokme(
              onhover: onhover,
              title: "NEXT PAGE",
              colorSecondery: Colors.redAccent,
              colorPremary: Colors.purpleAccent,
              radiusMin: 5,
              radiusMax: 10,
              textColorTwo: Colors.black,
              textColorOne: Colors.white,
              fontSizeOneMax: 12,
              fontSizeTwoMin: 10,
              sizeDokmeWidth: 60,
              sizeDokmeHeight: 25,
              timeAnimatedDokme: 500,
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => Page2());
                Navigator.push(context, route);
              },
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        //متن وسط
        Matn(
          matn: "FARZAD",
          rangCoverMatn: Colors.white,
          rangMatn: Colors.black,
          rangShadowOne: Colors.blueAccent,
          rangShadowTwo: Colors.red,
          sizeFont: 25,
        ),
        // NeumorphicSwitch(
        //   onChanged: (value) {
        //     klid = value;
        //     setState(() {
        //       Get.changeThemeMode(
        //           klid == true ? ThemeMode.dark : ThemeMode.light);
        //       Get.snackbar("تغییر کرد",
        //           "رنگ صفحه شما به ${klid == true ? "مشکی" : "سفید"} تغییر کرد",
        //           colorText: klid == true ? Colors.white : Colors.black);
        //     });
        //   },
        //   isEnabled: true,
        //   value: klid,
        // ),
        Spacer(),
        //ایکون ستینگ
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => SettingPage());
                Navigator.push(context, route);
              },
              icon: NeumorphicIcon(Icons.settings,
                  style: NeumorphicStyle(
                    color: klid == true ? Colors.white : Colors.black,
                  )),
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ],
        ),
        Row(
          children: [
            Dokme(
                onhover: onhover,
                title: "کلیک کنید",
                colorSecondery: Colors.black,
                colorPremary: Colors.green,
                radiusMin: 0,
                radiusMax: 15,
                textColorTwo: Colors.yellow,
                textColorOne: Colors.white,
                fontSizeOneMax: 30,
                fontSizeTwoMin: 10,
                sizeDokmeWidth: 70,
                sizeDokmeHeight: 70,
                timeAnimatedDokme: 500,
                onTap: () {
                  Get.to(Page2());
                }),
          ],
        )
      ],
    ));
  }
}
