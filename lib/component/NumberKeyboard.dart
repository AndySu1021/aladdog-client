import 'package:flutter/material.dart';

class NumberKeyboard extends StatelessWidget {
  final TextEditingController? controller;
  const NumberKeyboard({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButton(1, click: () {
                controller?.text = '${controller!.text}1';
              }),
              NumberButton(2, click: () {
                controller?.text = '${controller!.text}2';
              }),
              NumberButton(3, click: () {
                controller?.text = '${controller!.text}3';
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
                controller?.text = '${controller!.text}4';
              }),
              NumberButton(5, click: () {
                controller?.text = '${controller!.text}5';
              }),
              NumberButton(6, click: () {
                controller?.text = '${controller!.text}6';
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
                controller?.text = '${controller!.text}7';
              }),
              NumberButton(8, click: () {
                controller?.text = '${controller!.text}8';
              }),
              NumberButton(9, click: () {
                controller?.text = '${controller!.text}9';
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
                controller?.text = '${controller!.text}0';
              }),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 80,
                child: OutlinedButton(
                  onPressed: () {
                    controller?.text = '';
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
                      controller?.text = controller!.text
                          .substring(0, controller!.text.length - 1);
                    },
                    iconSize: 30,
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
          fixedSize: const Size(65, 65)),
      child: Text('$number'),
    );
  }
}
