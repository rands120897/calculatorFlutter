import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/button.dart';

class Perhitungan {
  int? angka;
}

class ClacCubit extends Cubit<List<int>> {
  ClacCubit({this.nilaia}) : super([]);

  List<int>? nilaia;

  void getNilai(int? nilai) {
    if (nilai != null) {
      var addNilai = <int>[nilai];

      emit(state + addNilai);

      print("nilai state sekarang: $state");
    }
  }

  // void getPerhitungan() {
  //   // int nilaiAwal;
  //   nilaia = state;
  //   if (nilaia != null) {
  //     var valuea = nilaia! * 5;
  //     print(valuea);
  //   }

  //   // emit(nilaiAwal = state);
  //   print(state);
  // }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ClacCubit mycalc = ClacCubit();

  @override
  Widget build(BuildContext context) {
    print("direbuild Ulang");
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.blueGrey[50],
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          Container(
            color: Colors.brown[50],
            height: 115,
          ),
          StreamBuilder(
              stream: mycalc.stream,
              builder: (context, snapshot) {
                // print(snapshot.data);
                return Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: Center(child: Text(snapshot.data!.join(""))),
                );
              }),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 6, 11, 18),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button_Calc(
                      cubitCalc: mycalc,
                      value: 1,
                      numb: "1",
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      cubitCalc: mycalc,
                      numb: "2",
                      value: 2,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      value: 3,
                      numb: "3",
                      cubitCalc: mycalc,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      numb: "mod",
                      cubitCalc: mycalc,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      numb: "n",
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button_Calc(
                      cubitCalc: mycalc,
                      numb: "7",
                      value: 7,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      numb: "8",
                      cubitCalc: mycalc,
                      value: 8,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      numb: "9",
                      value: 9,
                      cubitCalc: mycalc,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      numb: "/",
                      cubitCalc: mycalc,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      numb: "x2",
                      cubitCalc: mycalc,
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button_Calc(
                      numb: "4",
                      value: 4,
                      cubitCalc: mycalc,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      numb: "5",
                      cubitCalc: mycalc,
                      value: 5,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      numb: "6",
                      cubitCalc: mycalc,
                      value: 6,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      numb: "x",
                      cubitCalc: mycalc,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Button_Calc(
                      numb: "^",
                      cubitCalc: mycalc,
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Button_Calc(
                          numb: "1",
                          cubitCalc: mycalc,
                          value: 1,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Button_Calc(
                          numb: "0",
                          cubitCalc: mycalc,
                          value: 0,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Button_Calc(
                          numb: "2",
                          cubitCalc: mycalc,
                          value: 2,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Button_Calc(numb: ","),
                      ],
                    ),
                    Column(
                      children: [
                        Button_Calc(
                          numb: "3",
                          cubitCalc: mycalc,
                          value: 3,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Button_Calc(
                          numb: "%",
                          cubitCalc: mycalc,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Button_Calc(
                          numb: "-",
                          cubitCalc: mycalc,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Button_Calc(
                          numb: "+",
                          cubitCalc: mycalc,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 63,
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border:
                                  Border.all(width: 0.2, color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "=",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
