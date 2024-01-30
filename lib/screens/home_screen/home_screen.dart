import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/home_screen/widgets/best_selling.dart';
import 'package:clothes_store/screens/home_screen/widgets/item_header.dart';
import 'package:clothes_store/screens/home_screen/widgets/new_products.dart';
import 'package:clothes_store/screens/home_screen/widgets/search_widget.dart';
import 'package:clothes_store/screens/product_screen/product_screen.dart';
import 'package:clothes_store/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome',
          style: TextStyle(
            color: kSecondaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/image1.jpg'),
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                kSizedBoxH20,
                const SearchWidget(),
                kSizedBoxH20,
                Container(
                  height: kMediaQueryHeight(context) * 0.2,
                  width: kMediaQueryWidth(context),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF0DD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/images/freed.png',
                    // fit: BoxFit.cover,
                  ),
                ),
                kSizedBoxH20,
                ItemHeader(
                  onPressed: () {
                    // Navigator.pushNamed(context, CategoriesScreen.routeName);
                  },
                  title: 'Best Selling',
                ),
                kSizedBoxH20,
                BestSelling(
                  onPressed: () {
                    Navigator.pushNamed(context, ProductScreen.routeName);
                  },
                  height: kMediaQueryHeight(context) * 0.36,
                  //width: 150,
                ),
                kSizedBoxH20,
                ItemHeader(
                  onPressed: () {},
                  title: 'New Products',
                ),
                kSizedBoxH20,
                const NewProducts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
