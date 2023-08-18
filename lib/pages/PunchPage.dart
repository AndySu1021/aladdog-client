import 'package:aladdog_client/component/NumberKeyboard.dart';
import 'package:flutter/material.dart';

class PunchPage extends StatelessWidget {
  const PunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '請輸入員工編號',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          )),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                NumberKeyboard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
