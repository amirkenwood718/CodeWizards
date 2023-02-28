import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: (){
          Navigator.pop(context);
        },
            child:Text("دکمه گوه حوردن",style: TextStyle(color: Colors.red),)
        ),
      ),
    );
  }
}
