import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/dashboard/controller/dashboard_controller.dart';
import 'package:getx_clean_architecture/presentation/profile/profile_screen.dart';
import 'package:getx_clean_architecture/presentation/screens.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(title: Text("News App")),
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex.value,
            children: [
              HomeScreen(),
              TechNewsScreen(),
              SportsNewsScreen(),
              BusinessNewsScreen(),
              ProfileScreen(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: Colors.blue,
          currentIndex: controller.tabIndex.value,
          onTap: controller.changeTabIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.laptop_mac_sharp),
              label: 'Tech',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer_sharp),
              label: 'Sports',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_sharp),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_sharp),
              label: 'Settings',
            ),
          ],
        ),
      );
    });
  }
}
