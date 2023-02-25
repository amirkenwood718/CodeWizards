import 'package:codewizards/screen/homepage.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(Codewizard());
}
class Codewizard extends StatelessWidget {
  const Codewizard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(
        useMaterial3: true
      ),
      home: HomePage(),
    );
  }
}
