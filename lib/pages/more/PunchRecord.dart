import 'package:flutter/material.dart';

class PunchRecord extends StatelessWidget {
  const PunchRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Row(
        children: [
          ElevatedButton(onPressed: null, child: Text('開始時間')),
          ElevatedButton(onPressed: null, child: Text('結束時間'))
        ],
      ),
      SizedBox(
        height: 24,
      ),
      MyTable(
        columns: ['員工姓名', '員工編號', '打卡日期', '上班時間', '下班時間', '時數'],
      )
    ]);
  }
}

class MyTable extends StatelessWidget {
  final List<String> columns;
  const MyTable({super.key, required this.columns});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      // columnWidths: const <int, TableColumnWidth>{
      //   0: IntrinsicColumnWidth(),
      //   1: FlexColumnWidth(),
      //   2: FixedColumnWidth(64),
      // },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const <TableRow>[
        TableRow(
          children: <Widget>[
            TableCell(
              child: Text('員工姓名', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('員工編號', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('打卡日期', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('上班時間', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('下班時間', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('時數', textAlign: TextAlign.center),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: Text('卡丘', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('123456', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('2023/07/08', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('18:00', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('23:23', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('5時23分', textAlign: TextAlign.center),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: Text('大班', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('123456', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('2023/07/08', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('18:00', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('23:23', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('5時23分', textAlign: TextAlign.center),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: Text('烏龜', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('123456', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('2023/07/08', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('18:00', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('23:23', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('5時23分', textAlign: TextAlign.center),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            TableCell(
              child: Text('安迪', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('123456', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('2023/07/08', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('18:00', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('23:23', textAlign: TextAlign.center),
            ),
            TableCell(
              child: Text('5時23分', textAlign: TextAlign.center),
            ),
          ],
        ),
      ],
    );
  }
}
