import 'package:aladdog_client/pages/BookingPage.dart';
import 'package:aladdog_client/pages/OrderPage.dart';
import 'package:aladdog_client/pages/QueuePage.dart';
import 'package:flutter/material.dart';

import 'MorePage.dart';

enum NavPage {
  orderPage,
  queuePage,
  bookingPage,
  morePage,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NavPage _currentPage = NavPage.orderPage;

  final _pageMap = <NavPage, Widget>{
    NavPage.orderPage: const OrderPage(),
    NavPage.queuePage: const QueuePage(),
    NavPage.bookingPage: const BookingPage(),
    NavPage.morePage: const MorePage(),
  };

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
                            setState(() {
                              _currentPage = NavPage.orderPage;
                            });
                          }),
                          const SizedBox(
                            height: 8,
                          ),
                          NavIconButton('排隊', Icons.people, click: () {
                            setState(() {
                              _currentPage = NavPage.queuePage;
                            });
                          }),
                          const SizedBox(
                            height: 8,
                          ),
                          NavIconButton('預約', Icons.date_range, click: () {
                            setState(() {
                              _currentPage = NavPage.bookingPage;
                            });
                          }),
                        ],
                      ),
                      Column(
                        children: [
                          NavIconButton('更多', Icons.more_horiz, click: () {
                            setState(() {
                              _currentPage = NavPage.morePage;
                            });
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
                height: double.infinity,
                decoration: const BoxDecoration(color: Colors.white),
                child: _pageMap[_currentPage],
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
