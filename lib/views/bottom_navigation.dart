import 'package:finfest_ui/constants/app_colors.dart';
import 'package:finfest_ui/views/home_screen/home_screen.dart';
import 'package:finfest_ui/views/settings_screen/settings_screen.dart';
import 'package:finfest_ui/views/stats_screen/stats_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  List pages = [
    const HomeScreen(),
    const StatsScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 30, offset: Offset(0, 20))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: AppColor.mediumDarkGreen,
            selectedItemColor: AppColor.secondaryColor,
            unselectedItemColor: AppColor.lightGrey,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.auto_graph_outlined), label: 'Stats'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings')
            ],
          ),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
