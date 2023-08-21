import 'package:aladdog_client/component/NumberKeyboard.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

var _numberInputCtrl = TextEditingController();

class CounterPage extends StatelessWidget {
  const CounterPage({super.key, txt});

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
              minHeight: 40,
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
              labels: const ['支出', '收入'],
              radiusStyle: true,
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                autofocus: true,
                readOnly: true,
                controller: _numberInputCtrl,
                decoration: const InputDecoration(
                  labelText: '金額',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const SizedBox(
              width: 250,
              height: 130,
              child: TextField(
                maxLines: 8,
                minLines: 1,
                decoration: InputDecoration(
                  labelText: '備註',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
                onPressed: () {
                  _numberInputCtrl.text = '';
                  Navigator.pop(context, true);
                },
                style: ElevatedButton.styleFrom(fixedSize: const Size(120, 90)),
                child: const Text('送出'))
          ],
        )),
        const VerticalDivider(
          width: 80,
        ),
        Expanded(
          child: Column(
            children: [
              NumberKeyboard(controller: _numberInputCtrl),
            ],
          ),
        ),
      ],
    ));
  }
}
