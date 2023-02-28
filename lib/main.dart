import 'package:codewizards/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

void main() {
  runApp(Codewizard());
}

class Codewizard extends StatelessWidget {
  const Codewizard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
        home: HomePage(),
    );
  }
}
