import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class QueuePage extends StatelessWidget {
  const QueuePage({super.key});

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
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => SimpleDialog(
                            title: const Text('新增排隊'),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 30),
                            children: [
                              Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: '姓氏'),
                                      // The validator receives the text that the user has entered.
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: '手機號'),
                                      // The validator receives the text that the user has entered.
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: '人數'),
                                      // The validator receives the text that the user has entered.
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Validate returns true if the form is valid, or false otherwise.
                                        if (_formKey.currentState!.validate()) {
                                          // If the form is valid, display a snackbar. In the real world,
                                          // you'd often call a server or save the information in a database.
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content:
                                                    Text('Processing Data')),
                                          );
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(80, 40)),
                                      child: const Text('Submit'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ));
                },
                icon: const Icon(Icons.add),
                label: const Text('新增排隊'),
                style: ElevatedButton.styleFrom(fixedSize: const Size(120, 50)),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: ListView(
                            children: List.generate(
                          30,
                          (index) => Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            225, 225, 225, 1),
                                        width: 1)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        const Text(
                                          '排序',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '${180 + index}',
                                          style: const TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      '王小姐',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text('0988587988',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                133, 133, 133, 1),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ))),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                  color: const Color.fromRGBO(225, 225, 225, 1),
                                  width: 1)),
                          padding: const EdgeInsets.all(20),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '王小姐',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('聯絡電話：0912345678',
                                            style: TextStyle(fontSize: 16)),
                                        Text('取號時間：2023-07-08 18:00',
                                            style: TextStyle(fontSize: 16)),
                                        Text('序號：180',
                                            style: TextStyle(fontSize: 16)),
                                        Text('人數：5 人',
                                            style: TextStyle(fontSize: 16)),
                                        Text('備註：無',
                                            style: TextStyle(fontSize: 16)),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: SizedBox(
                                          height: 60,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                print(123);
                                              },
                                              child: const Text('取消候位')),
                                        )),
                                        const SizedBox(
                                          width: 24,
                                        ),
                                        Expanded(
                                            child: SizedBox(
                                          height: 60,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                print(123);
                                              },
                                              child: const Text('入座')),
                                        ))
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
