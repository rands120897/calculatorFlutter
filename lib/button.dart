// ignore_for_file: camel_case_types, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

// ignore: camel_case_types
class Button_Calc extends StatefulWidget {
  const Button_Calc({
    super.key,
    this.numb,
    this.value,
    this.warna,
    this.cubitCalc,
    this.iconPad,
  });

  final String? numb;
  final int? value;
  final Color? warna;
  final ClacCubit? cubitCalc;
  final Icons? iconPad;

  @override
  State<Button_Calc> createState() => _Button_CalcState();
}

class _Button_CalcState extends State<Button_Calc> {
  @override
  Widget build(BuildContext context) {
    // widget.i++;
    // print(widget.i);
    return ElevatedButton(
        onPressed: () {
          if (widget.value != null) {
            widget.cubitCalc!.getNilai(widget.value);

            // widget.i++;
            // print(widget.i);
          }
          if (widget.cubitCalc != null) {}
        },
        child: Column(
          children: [
            Text(widget.numb.toString()),
          ],
        ));
  }
}
