import 'package:flutter/material.dart';

class CheckInfo extends StatelessWidget {
  const CheckInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InfoRow('分店代號', 'PX-123456'),
        SizedBox(
          height: 16,
        ),
        InfoRow('軟體版本', 'v1.0.0'),
        SizedBox(
          height: 16,
        ),
        InfoRow('語言', '繁體中文'),
        SizedBox(
          height: 16,
        ),
        InfoRow('SSID', 'TAIWAN-5G'),
        SizedBox(
          height: 16,
        ),
        InfoRow('裝置IP', '192.168.0.10'),
        SizedBox(
          height: 16,
        ),
        InfoRow('裝置崗位', '廚房'),
      ],
    );
  }
}

class InfoRow extends StatelessWidget {
  final String title;
  final String value;
  const InfoRow(this.title, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          SizedBox(
            width: 200,
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Text(value)
        ],
      ),
    );
  }
}
