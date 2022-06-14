import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/constants/colors.dart';
import 'package:mapping_trekking_routes/ui/screens/home_screen.dart';
import 'package:mapping_trekking_routes/ui/screens/profile_screen.dart';
import 'package:mapping_trekking_routes/ui/screens/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  List pages = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.WHITE_COLOR,
        selectedItemColor: AppColors.GREEN_COLOR,
        selectedLabelStyle: const TextStyle(
          color: AppColors.GREEN_COLOR
        ),
        unselectedLabelStyle: const TextStyle(
          color: Color(0xFFA6A6A6)
        ),
        // unselectedItemColor: Color(0xFFA6A6A6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          setState(
            () {
              _selectedIndex = value;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home, color: _selectedIndex == 0 ? AppColors.GREEN_COLOR : const Color(0xFFA6A6A6),),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search, color: _selectedIndex == 1 ? AppColors.GREEN_COLOR : const Color(0xFFA6A6A6),),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.settings, color: _selectedIndex == 2 ? AppColors.GREEN_COLOR : const Color(0xFFA6A6A6),),
          ),
        ],
      ),
    );
  }
}
