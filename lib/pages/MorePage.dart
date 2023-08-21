import 'package:aladdog_client/pages/CounterPage.dart';
import 'package:aladdog_client/pages/PunchPage.dart';
import 'package:aladdog_client/pages/more/CounterRecord.dart';
import 'package:aladdog_client/pages/more/DeviceSetting.dart';
import 'package:aladdog_client/pages/more/PunchRecord.dart';
import 'package:aladdog_client/pages/more/SettleRecord.dart';
import 'package:flutter/material.dart';

import 'more/CheckInfo.dart';
import 'more/OrderRecord.dart';

enum MorePageCategory {
  orderRecord,
  punchRecord,
  counterRecord,
  settleRecord,
  deviceSetting,
  checkInfo,
}

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  MorePageCategory _currentPage = MorePageCategory.orderRecord;

  final _pageMap = <MorePageCategory, Widget>{
    MorePageCategory.orderRecord: const OrderRecord(),
    MorePageCategory.punchRecord: const PunchRecord(),
    MorePageCategory.counterRecord: const CounterRecord(),
    MorePageCategory.settleRecord: const SettleRecord(),
    MorePageCategory.deviceSetting: const DeviceSetting(),
    MorePageCategory.checkInfo: const CheckInfo(),
  };

  @override
  Widget build(BuildContext context) {
    return Column(
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
                decoration: const BoxDecoration(
                  border: Border(
                      right:
                          BorderSide(color: Color.fromRGBO(215, 215, 215, 1))),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        MorePageNavButton(
                          '點餐紀錄',
                          click: () {
                            setState(() {
                              _currentPage = MorePageCategory.orderRecord;
                            });
                          },
                        ),
                        MorePageNavButton(
                          '打卡紀錄',
                          click: () {
                            setState(() {
                              _currentPage = MorePageCategory.punchRecord;
                            });
                          },
                        ),
                        MorePageNavButton(
                          '錢櫃紀錄',
                          click: () {
                            setState(() {
                              _currentPage = MorePageCategory.counterRecord;
                            });
                          },
                        ),
                        MorePageNavButton(
                          '關帳/小結紀錄',
                          click: () {
                            setState(() {
                              _currentPage = MorePageCategory.settleRecord;
                            });
                          },
                        ),
                        MorePageNavButton(
                          '周邊硬體',
                          click: () {
                            setState(() {
                              _currentPage = MorePageCategory.deviceSetting;
                            });
                          },
                        ),
                        MorePageNavButton(
                          '查看資訊',
                          click: () {
                            setState(() {
                              _currentPage = MorePageCategory.checkInfo;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        OpButton('打卡', click: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const SimpleDialog(
                                    contentPadding: EdgeInsets.all(50),
                                    children: [
                                  PunchPage(),
                                ]),
                          );
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        OpButton('錢櫃收支', click: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const SimpleDialog(
                                    contentPadding: EdgeInsets.all(50),
                                    children: [
                                  CounterPage(),
                                ]),
                          );
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        OpButton('開錢櫃', click: () {
                          print(123);
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        OpButton('關帳/小結', click: () {
                          print(123);
                        }),
                        const SizedBox(
                          height: 48,
                        ),
                        OpButton('登出',
                            color: const Color.fromRGBO(228, 87, 76, 1),
                            borderColor: const Color.fromRGBO(228, 87, 76, 1),
                            foregroundColor: Colors.white, click: () {
                          print(123);
                        }),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(238, 238, 238, 1)),
                        child: _pageMap[_currentPage],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class OpButton extends StatelessWidget {
  final String title;
  final VoidCallback? click;
  final Color? color;
  final Color? foregroundColor;
  final Color borderColor;

  static const Color defaultBorderColor = Color.fromRGBO(196, 196, 196, 1);
  const OpButton(this.title,
      {super.key,
      this.click,
      this.color = Colors.white,
      this.foregroundColor = Colors.black,
      this.borderColor = defaultBorderColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: OutlinedButton(
        onPressed: click,
        style: OutlinedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: foregroundColor,
            padding: const EdgeInsets.all(15),
            textStyle: const TextStyle(fontSize: 14),
            side: BorderSide(color: borderColor)),
        child: Text(title),
      ),
    );
  }
}

class MorePageNavButton extends StatelessWidget {
  final String title;
  final VoidCallback? click;
  const MorePageNavButton(this.title, {super.key, this.click});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Color.fromRGBO(215, 215, 215, 1))),
      ),
      child: TextButton(
        onPressed: click,
        style: TextButton.styleFrom(foregroundColor: Colors.black),
        child: Text(title),
      ),
    );
  }
}
