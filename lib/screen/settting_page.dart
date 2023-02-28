import 'package:codewizards/widget/switklid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool klid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        children: [
          SizedBox(height: 75),
          Row(
            children: [
              Text("تغییر تم صفحه",style: TextStyle(color: klid==true?Colors.white:Colors.black),),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SwitchKlid(offOn:klid ,onchange:(value) {
                klid = value;
                setState(() {
                  Get.changeThemeMode(
                      klid == true ? ThemeMode.dark : ThemeMode.light);
                  Get.snackbar("تغییر کرد",
                      "رنگ صفحه شما به ${klid == true ? "مشکی" : "سفید"} تغییر کرد",
                      colorText: klid == true ? Colors.white : Colors.black);
                });
              },),
            ],
          ),
          Spacer(),
          Container(
              alignment: Alignment.bottomLeft,
              child: IconButton(onPressed:(){
                Navigator.pop(context);
              }, icon:Icon(Icons.arrow_circle_left_rounded,color:klid==true?Colors.white:Colors.black ,),
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
          ),

        ],
      ),
    );

  }
}



