import 'package:flutter/material.dart';
import 'package:hrm/view/screen/dashboard/history.dart';
import 'package:hrm/view/screen/dashboard/home.dart';
import 'package:hrm/view/screen/dashboard/activation_screen.dart';
import 'package:hrm/view/screen/dashboard/setting_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List children = [
    const HomeScreen(),
    const ActivationScreen(),
    const HistoryScreen(),
    const SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[curRentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: curRentIndex,
          onTap: ontapIndex,
          fixedColor: Colors.lightBlue,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.description_outlined,
                ),
                label: "ການເຄື່ອນໄຫວ"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month_rounded,
                ),
                label: "history"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "setting"),
          ]),
    );
  }

  int curRentIndex = 0;
  ontapIndex(index) {
    setState(() {
      curRentIndex = index;
    });
  }
}
