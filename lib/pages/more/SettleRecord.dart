import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../component/AppTable.dart';
import '../../component/DateRangePicker.dart';

const tableData = [
  {
    'id': 1,
    'created_at': '2023/07/07 15:00',
    'operator': '安迪',
    'type': 2,
    'shift_type': 2,
    'note': '少錢',
  },
  {
    'id': 2,
    'created_at': '2023/07/07 15:00',
    'operator': '安迪',
    'type': 1,
    'shift_type': 1,
    'note': '',
  },
  {
    'id': 3,
    'created_at': '2023/07/07 15:00',
    'operator': '安迪',
    'type': 1,
    'shift_type': 1,
    'note': '',
  },
  {
    'id': 4,
    'created_at': '2023/07/07 15:00',
    'operator': '安迪',
    'type': 1,
    'shift_type': 1,
    'note': '',
  },
  {
    'id': 5,
    'created_at': '2023/07/07 15:00',
    'operator': '安迪',
    'type': 1,
    'shift_type': 1,
    'note': '',
  },
  {
    'id': 6,
    'created_at': '2023/07/07 15:00',
    'operator': '安迪',
    'type': 1,
    'shift_type': 1,
    'note': '',
  },
  {
    'id': 7,
    'created_at': '2023/07/07 15:00',
    'operator': '安迪',
    'type': 1,
    'shift_type': 1,
    'note': '',
  },
  {
    'id': 8,
    'created_at': '2023/07/07 15:00',
    'operator': '安迪',
    'type': 1,
    'shift_type': 1,
    'note': '',
  },
  {
    'id': 9,
    'created_at': '2023/07/07 15:00',
    'operator': '安迪',
    'type': 1,
    'shift_type': 1,
    'note': '',
  },
  {
    'id': 10,
    'created_at': '2023/07/07 15:00',
    'operator': '安迪',
    'type': 1,
    'shift_type': 1,
    'note': '',
  },
];

class SettleRecord extends StatefulWidget {
  const SettleRecord({super.key});

  static const Map<int, String> settleType = {
    1: '小結',
    2: '關帳',
  };

  static const Map<int, String> shiftType = {
    1: '早班',
    2: '中班',
    3: '晚班',
  };

  @override
  State<SettleRecord> createState() => _SettleRecordState();
}

class _SettleRecordState extends State<SettleRecord> {
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
          onCellTap: (rowIdx, columnIdx) {
            print(tableData[rowIdx]['id']);
            showDialog(
                context: context,
                builder: (BuildContext context) => SimpleDialog(
                      title: const Text('小結詳情'),
                      titlePadding:
                          const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                      contentPadding: const EdgeInsets.all(24),
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
                      ],
                    ));
          },
          columns: <AppColumn>[
            const AppColumn(prop: 'id', label: '編號', visible: false),
            const AppColumn(prop: 'created_at', label: '時間'),
            const AppColumn(prop: 'operator', label: '操作者'),
            AppColumn(
                prop: 'type',
                label: '類型',
                formatter: (cellValue) =>
                    Text(SettleRecord.settleType[cellValue] ?? 'unknown')),
            AppColumn(
                prop: 'shift_type',
                label: '班別',
                formatter: (cellValue) =>
                    Text(SettleRecord.shiftType[cellValue] ?? 'unknown')),
            AppColumn(
                prop: 'note',
                label: '備註',
                formatter: (cellValue) =>
                    Text(cellValue == '' ? '-' : '$cellValue')),
          ],
          rows: tableData,
          total: 20,
        ),
      )),
    ]);
  }
}
