import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class SwitchKlid extends StatefulWidget {
  Function(bool) onchange;
 bool offOn;
  SwitchKlid({Key? key,required this.offOn, required this.onchange}) : super(key: key);
  @override
  State<SwitchKlid> createState() => _SwitchKlidState();
}

class _SwitchKlidState extends State<SwitchKlid> {

  @override
  Widget build(BuildContext context) {
    return NeumorphicSwitch(
      onChanged: widget.onchange,
      value: widget.offOn,

    );
  }
}
