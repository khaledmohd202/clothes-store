import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/cart_screen/cart_screen.dart';
import 'package:clothes_store/screens/favorites_screen/favorites_screen.dart';
import 'package:clothes_store/screens/home_screen/home_screen.dart';
import 'package:clothes_store/screens/profile_screen/profile_screen.dart';
import 'package:clothes_store/screens/qr_code/qr_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});
  static String routeName = 'NavigationScreen';

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = const [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, QRCode.routeName);
          // OR Bottom Show Modal
        },
        backgroundColor: kSecondaryColor,
        child: const Icon(
          Icons.qr_code,
          size: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        activeIndex: pageIndex,
        inactiveColor: Colors.black.withOpacity(0.5),
        activeColor: kSecondaryColor,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        iconSize: 28,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
