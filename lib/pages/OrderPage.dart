import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'MorePage.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color.fromRGBO(215, 215, 215, 1))),
          ),
        ),
        Expanded(
            child: Row(
          children: [
            Container(
                width: 240,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  border: Border(
                      right:
                          BorderSide(color: Color.fromRGBO(215, 215, 215, 1))),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'A2 (1F)',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '狀態：使用中',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '人數：5 人',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '批次號：25',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '入座時間：18:50',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        OpButton('入座', click: () {
                          print(123);
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        OpButton('點餐 QRCode', click: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => SimpleDialog(
                                    title: const Text('點餐 QRCode'),
                                    contentPadding: const EdgeInsets.all(40),
                                    children: [
                                      SizedBox(
                                        width: 250,
                                        height: 250,
                                        child: SfBarcodeGenerator(
                                            value: 'https://www.youtube.com',
                                            symbology: QRCode()),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('列印'))
                                    ],
                                  ));
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        OpButton('點餐', click: () {
                          print(123);
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        OpButton('已點項目', click: () {
                          print(123);
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        OpButton('結帳明細', click: () {
                          print(123);
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        OpButton('結帳收桌', click: () {
                          print(123);
                        }),
                      ],
                    )
                  ],
                )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ToggleSwitch(
                    minWidth: 60,
                    minHeight: 40,
                    cornerRadius: 0,
                    activeBgColors: const [
                      [Color.fromRGBO(136, 174, 141, 1)],
                      [Color.fromRGBO(136, 174, 141, 1)],
                      [Color.fromRGBO(136, 174, 141, 1)],
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: const Color.fromRGBO(218, 218, 218, 1),
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 0,
                    totalSwitches: 3,
                    labels: const ['1F', '2F', '3F'],
                    radiusStyle: true,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(136, 174, 141, 1),
                    ),
                  ))
                ],
              ),
            )),
          ],
        ))
      ],
    );
  }
}
