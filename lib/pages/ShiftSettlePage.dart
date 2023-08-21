import 'package:aladdog_client/component/NumberKeyboard.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'ShiftPage.dart';

var _numberInputCtrl = TextEditingController();

class ShiftSettlePage extends StatefulWidget {
  const ShiftSettlePage({super.key});

  @override
  State<ShiftSettlePage> createState() => _ShiftSettlePageState();
}

class _ShiftSettlePageState extends State<ShiftSettlePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shift Settle Page',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 400),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        TextField(
                          autofocus: true,
                          readOnly: true,
                          controller: _numberInputCtrl,
                          decoration: const InputDecoration(
                            labelText: '錢櫃總金額',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        NumberKeyboard(
                          controller: _numberInputCtrl,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  _numberInputCtrl.text = '';
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const ShiftPage();
                                  }));
                                },
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(120, 70)),
                                child: const Text('交班')),
                            ElevatedButton(
                                onPressed: () {
                                  _numberInputCtrl.text = '';
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const ShiftPage();
                                  }));
                                },
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(120, 70)),
                                child: const Text('關帳'))
                          ],
                        ),
                      ],
                    )),
                    const SizedBox(
                      width: 56,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '營業額',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                                NumberFormat.currency(
                                        locale: 'zh_TW',
                                        symbol: '\$',
                                        decimalDigits: 0)
                                    .format(15431),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('現金收入'),
                            Text(NumberFormat.currency(
                                    locale: 'zh_TW',
                                    symbol: '\$',
                                    decimalDigits: 0)
                                .format(10431))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('信用卡'),
                            Text(NumberFormat.currency(
                                    locale: 'zh_TW',
                                    symbol: '\$',
                                    decimalDigits: 0)
                                .format(5000))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('其他'),
                            Text(NumberFormat.currency(
                                    locale: 'zh_TW',
                                    symbol: '\$',
                                    decimalDigits: 0)
                                .format(0))
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('錢櫃盈餘',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text(
                                NumberFormat.currency(
                                        locale: 'zh_TW',
                                        symbol: '\$',
                                        decimalDigits: 0)
                                    .format(12431),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('現金收入'),
                            Text(NumberFormat.currency(
                                    locale: 'zh_TW',
                                    symbol: '\$',
                                    decimalDigits: 0)
                                .format(10431))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('零用金'),
                            Text(NumberFormat.currency(
                                    locale: 'zh_TW',
                                    symbol: '\$',
                                    decimalDigits: 0)
                                .format(2000))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('收入'),
                            Text(NumberFormat.currency(
                                    locale: 'zh_TW',
                                    symbol: '\$',
                                    decimalDigits: 0)
                                .format(0))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('支出'),
                            Text(NumberFormat.currency(
                                    locale: 'zh_TW',
                                    symbol: '\$',
                                    decimalDigits: 0)
                                .format(0))
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('短溢',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text(
                                NumberFormat.currency(
                                        locale: 'zh_TW',
                                        symbol: '\$',
                                        decimalDigits: 0)
                                    .format(-2431),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('錢櫃實點現金'),
                            Text(NumberFormat.currency(
                                    locale: 'zh_TW',
                                    symbol: '\$',
                                    decimalDigits: 0)
                                .format(0))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('錢櫃應收現金'),
                            Text(NumberFormat.currency(
                                    locale: 'zh_TW',
                                    symbol: '\$',
                                    decimalDigits: 0)
                                .format(14531))
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('作廢總額',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text(
                                NumberFormat.currency(
                                        locale: 'zh_TW',
                                        symbol: '\$',
                                        decimalDigits: 0)
                                    .format(0),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('折扣總額',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text(
                                NumberFormat.currency(
                                        locale: 'zh_TW',
                                        symbol: '\$',
                                        decimalDigits: 0)
                                    .format(0),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold))
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const SizedBox(
                          height: 110,
                          child: TextField(
                            maxLines: 8,
                            minLines: 1,
                            decoration: InputDecoration(
                              labelText: '備註',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                )),
          ),
        ));
  }
}
