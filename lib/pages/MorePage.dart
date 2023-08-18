import 'package:aladdog_client/pages/PunchPage.dart';
import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

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
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('測試'),
            )),
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
                        Container(
                          height: 42,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(215, 215, 215, 1))),
                          ),
                          child: const Text('交易紀錄'),
                        ),
                        Container(
                          height: 42,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(215, 215, 215, 1))),
                          ),
                          child: const Text('打卡紀錄'),
                        ),
                        Container(
                          height: 42,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(215, 215, 215, 1))),
                          ),
                          child: const Text('錢櫃紀錄'),
                        ),
                        Container(
                          height: 42,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(215, 215, 215, 1))),
                          ),
                          child: const Text('關帳/小結紀錄'),
                        ),
                        Container(
                          height: 42,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(215, 215, 215, 1))),
                          ),
                          child: const Text('周邊硬體'),
                        ),
                        Container(
                          height: 42,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(215, 215, 215, 1))),
                          ),
                          child: const Text('查看資訊'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        OpButton('打卡', click: () {
                          print(123);
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        OpButton('錢櫃收支', click: () {
                          print(123);
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
              const Expanded(
                child: PunchPage(),
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
