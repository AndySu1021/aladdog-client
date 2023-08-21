import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../component/AppTable.dart';
import '../../component/DateRangePicker.dart';

class CounterRecord extends StatefulWidget {
  const CounterRecord({super.key});

  static const Map<int, String> counterRecordType = {
    1: '留存金',
    2: '支出',
    3: '收入',
  };

  @override
  State<CounterRecord> createState() => _CounterRecordState();
}

class _CounterRecordState extends State<CounterRecord> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const DateRangePicker(),
      const SizedBox(
        height: 24,
      ),
      Expanded(
          child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(20),
        child: AppTable(
          columns: <AppColumn>[
            const AppColumn(prop: 'created_at', label: '時間'),
            const AppColumn(prop: 'operator', label: '操作者'),
            AppColumn(
                prop: 'type',
                label: '類型',
                formatter: (cellValue) => Text(
                    CounterRecord.counterRecordType[cellValue] ?? 'unknown')),
            const AppColumn(prop: 'note', label: '備註'),
            AppColumn(
                prop: 'amount',
                label: '金額',
                formatter: (cellValue) => Text(NumberFormat.currency(
                        locale: 'zh_TW', symbol: '\$', decimalDigits: 0)
                    .format(cellValue))),
          ],
          rows: const [
            {
              'created_at': '2023/07/07 15:00',
              'operator': '安迪',
              'type': 1,
              'note': '進貨',
              'amount': 12300
            },
            {
              'created_at': '2023/07/07 15:00',
              'operator': '安迪',
              'type': 1,
              'note': '進貨',
              'amount': 123
            },
            {
              'created_at': '2023/07/07 15:00',
              'operator': '安迪',
              'type': 1,
              'note': '進貨',
              'amount': 123
            },
            {
              'created_at': '2023/07/07 15:00',
              'operator': '安迪',
              'type': 1,
              'note': '進貨',
              'amount': 123
            },
            {
              'created_at': '2023/07/07 15:00',
              'operator': '安迪',
              'type': 1,
              'note': '進貨',
              'amount': 123
            },
            {
              'created_at': '2023/07/07 15:00',
              'operator': '安迪',
              'type': 1,
              'note': '進貨',
              'amount': 123
            },
            {
              'created_at': '2023/07/07 15:00',
              'operator': '安迪',
              'type': 1,
              'note': '進貨',
              'amount': 123
            },
            {
              'created_at': '2023/07/07 15:00',
              'operator': '安迪',
              'type': 1,
              'note': '進貨',
              'amount': 123
            },
            {
              'created_at': '2023/07/07 15:00',
              'operator': '安迪',
              'type': 1,
              'note': '進貨',
              'amount': 123
            },
            {
              'created_at': '2023/07/07 15:00',
              'operator': '安迪',
              'type': 1,
              'note': '進貨',
              'amount': 123
            },
          ],
          total: 20,
        ),
      )),
    ]);
  }
}
