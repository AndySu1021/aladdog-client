import 'package:aladdog_client/component/AppTable.dart';
import 'package:flutter/material.dart';

import '../../component/DateRangePicker.dart';

class PunchRecord extends StatefulWidget {
  const PunchRecord({super.key});

  @override
  State<PunchRecord> createState() => _PunchRecordState();
}

class _PunchRecordState extends State<PunchRecord> {
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
            const AppColumn(prop: 'name', label: '員工姓名'),
            const AppColumn(prop: 'code', label: '員工編號'),
            const AppColumn(prop: 'punch_date', label: '打卡日期'),
            const AppColumn(prop: 'start_time', label: '上班時間'),
            const AppColumn(prop: 'end_time', label: '下班時間'),
            AppColumn(
                prop: 'total_minutes',
                label: '時數',
                formatter: (cellValue) =>
                    Text('${cellValue ~/ 60} 時 ${cellValue % 60} 分')),
          ],
          rows: const [
            {
              'name': '安迪',
              'code': '123456',
              'punch_date': '2023/07/07',
              'start_time': '20:00',
              'end_time': '02:00',
              'total_minutes': 123
            },
            {
              'name': '安迪',
              'code': '123456',
              'punch_date': '2023/07/07',
              'start_time': '20:00',
              'end_time': '02:00',
              'total_minutes': 123
            },
            {
              'name': '安迪',
              'code': '123456',
              'punch_date': '2023/07/07',
              'start_time': '20:00',
              'end_time': '02:00',
              'total_minutes': 123
            },
            {
              'name': '安迪',
              'code': '123456',
              'punch_date': '2023/07/07',
              'start_time': '20:00',
              'end_time': '02:00',
              'total_minutes': 123
            },
            {
              'name': '安迪',
              'code': '123456',
              'punch_date': '2023/07/07',
              'start_time': '20:00',
              'end_time': '02:00',
              'total_minutes': 123
            },
            {
              'name': '安迪',
              'code': '123456',
              'punch_date': '2023/07/07',
              'start_time': '20:00',
              'end_time': '02:00',
              'total_minutes': 123
            },
            {
              'name': '安迪',
              'code': '123456',
              'punch_date': '2023/07/07',
              'start_time': '20:00',
              'end_time': '02:00',
              'total_minutes': 123
            },
            {
              'name': '安迪',
              'code': '123456',
              'punch_date': '2023/07/07',
              'start_time': '20:00',
              'end_time': '02:00',
              'total_minutes': 123
            },
            {
              'name': '安迪',
              'code': '123456',
              'punch_date': '2023/07/07',
              'start_time': '20:00',
              'end_time': '02:00',
              'total_minutes': 123
            },
            {
              'name': '安迪',
              'code': '123456',
              'punch_date': '2023/07/07',
              'start_time': '20:00',
              'end_time': '02:00',
              'total_minutes': 123
            },
          ],
          total: 20,
        ),
      )),
    ]);
  }
}
