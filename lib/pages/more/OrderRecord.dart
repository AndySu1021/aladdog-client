import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../component/AppTable.dart';
import '../../component/DateRangePicker.dart';

const orderDetail = {
  'order_no': 'D123456789',
  'shift_type': 1,
  'table_no': 'A2',
  'batch_no': 1,
  'created_at': '2023/07/07 18:00',
  'leaved_at': '2023/07/07 21:00',
  'invoice_no': 'PX-1236781',
  'headcount': 5,
  'pay_type': 1,
  'total_amount': 1234,
  'status': 2,
};

const tableData = <Map>[
  {
    'order_no': 'D123456789',
    'created_at': '2023/07/07 15:00',
    'table_no': 'A2',
    'batch_no': 1,
    'invoice_no': 'PX-1236781',
    'total_amount': 1234,
    'status': 2,
  },
  {
    'order_no': 'D123456789',
    'created_at': '2023/07/07 15:00',
    'table_no': 'A2',
    'batch_no': 1,
    'invoice_no': 'PX-1236781',
    'total_amount': 1234,
    'status': 2,
  },
  {
    'order_no': 'D123456789',
    'created_at': '2023/07/07 15:00',
    'table_no': 'A2',
    'batch_no': 1,
    'invoice_no': 'PX-1236781',
    'total_amount': 1234,
    'status': 2,
  },
  {
    'order_no': 'D123456789',
    'created_at': '2023/07/07 15:00',
    'table_no': 'A2',
    'batch_no': 1,
    'invoice_no': 'PX-1236781',
    'total_amount': 1234,
    'status': 2,
  },
  {
    'order_no': 'D123456789',
    'created_at': '2023/07/07 15:00',
    'table_no': 'A2',
    'batch_no': 1,
    'invoice_no': 'PX-1236781',
    'total_amount': 1234,
    'status': 2,
  },
  {
    'order_no': 'D123456789',
    'created_at': '2023/07/07 15:00',
    'table_no': 'A2',
    'batch_no': 1,
    'invoice_no': 'PX-1236781',
    'total_amount': 1234,
    'status': 2,
  },
  {
    'order_no': 'D123456789',
    'created_at': '2023/07/07 15:00',
    'table_no': 'A2',
    'batch_no': 1,
    'invoice_no': 'PX-1236781',
    'total_amount': 1234,
    'status': 2,
  },
  {
    'order_no': 'D123456789',
    'created_at': '2023/07/07 15:00',
    'table_no': 'A2',
    'batch_no': 1,
    'invoice_no': 'PX-1236781',
    'total_amount': 1234,
    'status': 2,
  },
  {
    'order_no': 'D123456789',
    'created_at': '2023/07/07 15:00',
    'table_no': 'A2',
    'batch_no': 1,
    'invoice_no': 'PX-1236781',
    'total_amount': 1234,
    'status': 2,
  },
  {
    'order_no': 'D123456789',
    'created_at': '2023/07/07 15:00',
    'table_no': 'A2',
    'batch_no': 1,
    'invoice_no': 'PX-1236781',
    'total_amount': 1234,
    'status': 2,
  },
];

class OrderRecord extends StatefulWidget {
  const OrderRecord({super.key});

  static const Map<int, String> orderStatus = {
    1: '未點餐',
    2: '用餐中',
    3: '已結帳',
  };

  static const Map<int, String> orderPayType = {
    1: '現金',
    2: '信用卡',
    3: 'LinePay',
    4: 'ApplePay',
    5: '街口',
  };

  static const Map<int, String> shiftType = {
    1: '早班',
    2: '中班',
    3: '晚班',
  };

  @override
  State<OrderRecord> createState() => _OrderRecordState();
}

class _OrderRecordState extends State<OrderRecord> {
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
                      title: const Text('訂單詳情'),
                      titlePadding:
                          const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                      contentPadding: const EdgeInsets.all(24),
                      children: [
                        SizedBox(
                          height: 500,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '訂單號: ${orderDetail['order_no']}',
                                  ),
                                  Text(
                                    '班別: ${OrderRecord.shiftType[orderDetail['shift_type']]}',
                                  ),
                                  Text(
                                    '桌號: ${orderDetail['table_no']}',
                                  ),
                                  Text(
                                    '批次號: ${orderDetail['batch_no']}',
                                  ),
                                  Text(
                                    '入座時間: ${orderDetail['created_at']}',
                                  ),
                                  Text(
                                    '離座時間: ${orderDetail['leaved_at']}',
                                  ),
                                  Text(
                                    '發票: ${orderDetail['invoice_no']}',
                                  ),
                                  Text(
                                    '人數: ${orderDetail['headcount']} 人',
                                  ),
                                  Text(
                                    '付款方式: ${OrderRecord.orderPayType[orderDetail['pay_type']]}',
                                  ),
                                  Text(
                                    '總金額: ${NumberFormat.currency(locale: 'zh_TW', symbol: '\$', decimalDigits: 0).format(orderDetail['total_amount'])}',
                                  ),
                                  Text(
                                    '狀態: ${OrderRecord.orderStatus[orderDetail['status']]}',
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                ],
                              )),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: List.generate(
                                      20,
                                      (index) => Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20, horizontal: 80),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                  color: Colors.grey.shade200),
                                            ),
                                            child: const Text('龍蝦沙拉*2   \$600'),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ));
          },
          columns: <AppColumn>[
            const AppColumn(prop: 'order_no', label: '訂單號'),
            const AppColumn(prop: 'created_at', label: '時間'),
            const AppColumn(prop: 'table_no', label: '桌號'),
            const AppColumn(prop: 'batch_no', label: '批次號'),
            const AppColumn(prop: 'invoice_no', label: '發票'),
            AppColumn(
                prop: 'total_amount',
                label: '總金額',
                formatter: (cellValue) => Text(NumberFormat.currency(
                        locale: 'zh_TW', symbol: '\$', decimalDigits: 0)
                    .format(cellValue))),
            AppColumn(
                prop: 'status',
                label: '狀態',
                formatter: (cellValue) =>
                    Text(OrderRecord.orderStatus[cellValue] ?? 'unknown')),
          ],
          rows: tableData,
          total: 20,
        ),
      )),
    ]);
  }
}
