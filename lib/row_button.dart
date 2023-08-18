// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/button.dart';

class Row_BTN extends StatelessWidget {
  const Row_BTN({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Button_Calc(
          numb: 1.toString(),
        ),
        SizedBox(
          width: 3,
        ),
        Button_Calc(),
        SizedBox(
          width: 3,
        ),
        Button_Calc(),
        SizedBox(
          width: 3,
        ),
        Button_Calc(),
        SizedBox(
          width: 3,
        ),
        Button_Calc(),
      ],
    );
  }
}
