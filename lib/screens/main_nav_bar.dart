import 'package:aora/screens/create_screen.dart';
import 'package:aora/screens/home_screen.dart';
import 'package:aora/screens/profile_screen.dart';
import 'package:aora/screens/saved_screen.dart';
import 'package:flutter/material.dart';
import '../theme/app_pallete.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({
    super.key,
  });

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int currentIndex = 0;
  final tabs = [
    const HomeScreen(),
    const ProfileScreen(),
    const CreateScreen(),
    const SavedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 5),
        decoration: const BoxDecoration(
            border:
                Border(top: BorderSide(width: 1, color: Color(0xFF232533)))),
        child: BottomNavigationBar(
          selectedItemColor: AppPallete.borderColor,
          unselectedItemColor: AppPallete.whiteColorShade1,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
              backgroundColor: AppPallete.transparentColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: AppPallete.transparentColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: "Create",
              backgroundColor: AppPallete.transparentColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save),
              label: "Saved",
              backgroundColor: AppPallete.transparentColor,
            ),
          ],
        ),
      ),
    );
  }
}
