import 'package:flutter/material.dart';
import 'package:shopping_app_provider_state_management/helper/colors.dart';
import 'package:shopping_app_provider_state_management/views/bottom_bar_screens/Home_Sceens.dart';
import 'package:shopping_app_provider_state_management/views/bottom_bar_screens/bag_screens.dart';
import 'package:shopping_app_provider_state_management/views/bottom_bar_screens/fav_screen.dart';
import 'package:shopping_app_provider_state_management/views/bottom_bar_screens/profile_screen.dart';
import 'package:shopping_app_provider_state_management/views/bottom_bar_screens/shop_screens.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int currentindex = 0;
  List screens = [
    HomeScreens(),
    const ShopScreen(),
    const Bag_Screen(),
    const FavScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_grocery_store_outlined,
                size: 30,
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
              ),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 30,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 30,
              ),
              label: 'Profile',
            ),
          ],
          backgroundColor: Colors.white,
          currentIndex: currentindex,
          onTap: (int index) {
            setState(() {
              currentindex = index;
            });
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedIconTheme:
              const IconThemeData(color: Colors.grey, weight: 200, size: 30),
          selectedItemColor: clr.orange,
          selectedIconTheme:
              const IconThemeData(weight: 200, color: clr.orange, size: 30),
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
