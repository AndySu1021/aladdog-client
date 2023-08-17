import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomePage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Container(
                width: 110,
                height: double.infinity,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(67, 66, 85, 1)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            DateTime.now().toString().substring(5, 10),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            DateTime.now().toString().substring(11, 16),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          NavIconButton('點餐', Icons.fastfood_sharp, click: () {
                            print(123);
                          }),
                          const SizedBox(
                            height: 8,
                          ),
                          NavIconButton('排隊', Icons.people, click: () {
                            print(123);
                          }),
                          const SizedBox(
                            height: 8,
                          ),
                          NavIconButton('預約', Icons.date_range, click: () {
                            print(123);
                          }),
                        ],
                      ),
                      Column(
                        children: [
                          NavIconButton('更多', Icons.more_horiz, click: () {
                            print(123);
                          }),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            '中華一店',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            '晚班',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Expanded(
              child: Container(
                width: 120,
                height: double.infinity,
                decoration: const BoxDecoration(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NavIconButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? click;
  const NavIconButton(this.title, this.icon, {super.key, this.click});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          onPressed: click,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            foregroundColor: const Color.fromRGBO(220, 220, 220, 1),
          ),
          child: Column(
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.white70,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 14, color: Colors.white),
              )
            ],
          )),
    );
  }
}
