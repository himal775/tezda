import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tezda/screen/HomePage/homePage.dart';
import 'package:tezda/screen/HomePage/productListScreen.dart';
import 'package:tezda/screen/profile.dart';

class AdminBottomNavigation extends StatefulWidget {
  AdminBottomNavigation({
    super.key,
  });

  @override
  State<AdminBottomNavigation> createState() => _AdminBottomNavigation();
}

List<Widget> pages = [
  HomePage(),
  ProductListScreen(),
  ProductListScreen(),
  MorePage()
];

class _AdminBottomNavigation extends State<AdminBottomNavigation> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        bottomNavigationBar: Container(
          height: 60,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              unselectedLabelStyle: TextStyle(color: Colors.black),
              currentIndex: selectedItem,
              // showSelectedLabels: true,
              showUnselectedLabels: false,
              selectedItemColor: Color.fromARGB(255, 173, 16, 5),
              unselectedItemColor: Colors.grey,
              onTap: (int index) {
                setState(() {
                  selectedItem = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    size: 28,
                  ),
                  label: "My Status",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  label: "Notification",
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 173, 16, 5),
                  ),
                  icon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 173, 16, 5),
                  ),
                  label: "Profile",
                ),
              ]),
        ),
        body: pages.elementAt(selectedItem),
      );
    });
  }
}
