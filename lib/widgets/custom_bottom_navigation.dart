import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_rounded),
          label: "Calendar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.stacked_bar_chart_rounded),
          label: "Graphics",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_rounded),
          label: "Users",
        ),
      ],
    );
  }
}
