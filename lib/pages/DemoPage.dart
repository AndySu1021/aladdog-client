import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DemoPage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(color: Colors.amber),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    child: ListView(
                        children: List.generate(
                      30,
                      (index) => Container(
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.blueGrey,
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 2))),
                        child: const Text('data'),
                      ),
                    )),
                  )),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                      child: Container(
                    child: ListView(
                        children: List.generate(
                      30,
                      (index) => Container(
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.blueGrey,
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 2))),
                        child: const Text('data'),
                      ),
                    )),
                  ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
