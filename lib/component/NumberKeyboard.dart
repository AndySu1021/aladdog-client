import 'package:flutter/material.dart';

class NumberKeyboard extends StatelessWidget {
  const NumberKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButton(1, click: () {
                print(1);
              }),
              NumberButton(2, click: () {
                print(2);
              }),
              NumberButton(3, click: () {
                print(3);
              }),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButton(4, click: () {
                print(4);
              }),
              NumberButton(5, click: () {
                print(5);
              }),
              NumberButton(6, click: () {
                print(6);
              }),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButton(7, click: () {
                print(7);
              }),
              NumberButton(8, click: () {
                print(8);
              }),
              NumberButton(9, click: () {
                print(9);
              }),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumberButton(0, click: () {
                print(0);
              }),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 80,
                child: OutlinedButton(
                  onPressed: () {
                    print(123);
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(181, 181, 181, 1),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(15),
                      textStyle: const TextStyle(fontSize: 14),
                      side: const BorderSide(
                          color: Color.fromRGBO(181, 181, 181, 1))),
                  child: const Text('清除'),
                ),
              ),
              SizedBox(
                width: 80,
                child: IconButton(
                    onPressed: () {
                      print(123);
                    },
                    iconSize: 35,
                    icon: const Icon(Icons.backspace)),
              ),
              const SizedBox(
                width: 80,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final int number;
  final VoidCallback? click;
  const NumberButton(this.number, {super.key, this.click});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: click,
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          shape: const CircleBorder(),
          fixedSize: const Size(80, 80)),
      child: Text('$number'),
    );
  }
}
