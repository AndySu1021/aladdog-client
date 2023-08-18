import 'package:aladdog_client/component/NumberKeyboard.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PunchPage extends StatelessWidget {
  const PunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
        child: Row(
      children: [
        Expanded(
            child: Column(
          children: [
            ToggleSwitch(
              minWidth: 90.0,
              minHeight: 60,
              cornerRadius: 10.0,
              activeBgColors: const [
                [Color.fromRGBO(64, 158, 255, 1)],
                [Color.fromRGBO(64, 158, 255, 1)],
              ],
              activeFgColor: Colors.white,
              inactiveBgColor: const Color.fromRGBO(218, 218, 218, 1),
              inactiveFgColor: Colors.white,
              initialLabelIndex: 0,
              totalSwitches: 2,
              labels: const ['簽到', '簽退'],
              radiusStyle: true,
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              '請輸入員工編號',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  print(123);
                },
                style: ElevatedButton.styleFrom(fixedSize: const Size(120, 90)),
                child: const Text('送出'))
          ],
        )),
        const VerticalDivider(
          width: 80,
        ),
        const Expanded(
          child: Column(
            children: [
              NumberKeyboard(),
            ],
          ),
        ),
      ],
    ));
  }
}
