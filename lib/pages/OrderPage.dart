import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

const categories = [
  {'label': '特條'},
  {'label': '琴酒'},
  {'label': '威士忌'},
  {'label': '經典'},
  {
    'label': '其他',
    'children': [
      {'label': 'AAA'},
      {'label': 'BBB'}
    ]
  }
];

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color.fromRGBO(215, 215, 215, 1))),
          ),
          child: ToggleSwitch(
            minWidth: 50.0,
            minHeight: 30,
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
            labels: const ['酒品', '餐點'],
            radiusStyle: true,
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ),
        Expanded(
            child: Row(
          children: [
            Container(
              width: 240,
              decoration: const BoxDecoration(
                border: Border(
                    right: BorderSide(color: Color.fromRGBO(215, 215, 215, 1))),
              ),
              child: Column(
                children: [
                  Expanded(
                      child: ListView(
                          children: List.generate(
                    categories.length,
                    (index) => Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(215, 215, 215, 1)))),
                      child: categories[index]['children'] != null
                          ? ExpansionTile(
                              title:
                                  Text('${categories[index]['label'] ?? ''}'),
                              children: List.generate(
                                (categories[index]['children'] as List).length,
                                (idx) => ListTile(
                                  onTap: () => print(123),
                                  title: Center(
                                    child: Text(
                                        '${(categories[index]['children'] as List)[idx]['label'] ?? ''}'),
                                  ),
                                ),
                              ))
                          : ListTile(
                              onTap: () => print(123),
                              title: Center(
                                child:
                                    Text('${categories[index]['label'] ?? ''}'),
                              ),
                            ),
                    ),
                  ))),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Wrap(
                          spacing: 8.0, // 主轴(水平)方向间距
                          runSpacing: 8.0, // 纵轴（垂直）方向间距
                          alignment: WrapAlignment.center, //沿主轴方向居中
                          children: List.generate(
                              16,
                              (index) => Stack(
                                    children: [
                                      Container(
                                        width: 150,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/avatar.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          child: Container(
                                            width: 150,
                                            height: 50,
                                            decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.6),
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8))),
                                            child: const Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    '特選牛牌',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    '\$1,200',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )),
                                    ],
                                  )))
                    ],
                  )),
            ),
            const SizedBox(
              width: 330,
              child: Column(
                children: [],
              ),
            ),
          ],
        ))
      ],
    );
  }
}
