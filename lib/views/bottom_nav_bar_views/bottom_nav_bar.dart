import 'package:flutter/material.dart';
import 'package:health_app/views/bottom_nav_bar_views/profile_view.dart';
import 'package:health_app/views/bottom_nav_bar_views/doctors_cart_view.dart';
import 'package:health_app/views/bottom_nav_bar_views/home_view.dart';
import 'package:health_app/views/bottom_nav_bar_views/hospital_cart_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  static String id = 'BottomNavBar';
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    const HomeView(),
    const DoctorsCartView(),
    const HospitalCartView(),
    const ProfileView(),
  ];

  int selectedIndex = 0;
  // void onTap(int index) {
  //   setState() {

  //     currentIndex = index;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            label: 'Doctors',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Hospitals',
            icon: Icon(Icons.local_hospital),
          ),
          BottomNavigationBarItem(
            label: 'Animals',
            icon: Icon(Icons.abc),
          ),
        ],
      ),
    );
  }
}
