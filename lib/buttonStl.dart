// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BtnStl extends StatelessWidget {
  const BtnStl({super.key, this.numb, this.value, this.warna});

  final String? numb;
  final int? value;
  final Color? warna;

  Stream<int> getStream() async* {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    print("di rebuild stl");
    return GestureDetector(
      onTap: () {},
      child: StreamBuilder(
          stream: getStream(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text('Loading...'),
              );
            } else {
              return Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black26,
                    border: Border.all(width: 0.2, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("${snapshot.data}")],
                ),
              );
            }
          }),
    );
  }
}
