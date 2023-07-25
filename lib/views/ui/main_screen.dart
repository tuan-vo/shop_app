import 'package:flutter/material.dart';
import 'package:shop_app/views/shared/appstyle.dart';
import 'package:shop_app/views/shared/bottom_nav_widget.dart';
import 'package:shop_app/views/ui/cart_page.dart';
import 'package:shop_app/views/ui/home_page.dart';
import 'package:shop_app/views/ui/profile_page.dart';
import 'package:shop_app/views/ui/search_page.dart';

class main_screen extends StatelessWidget {
  main_screen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    int pageIndex = 0;
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      body: pageList[pageIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.all(18),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavWidget(
                  onTap: () {},
                  icon: Icons.home,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Icons.search,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Icons.add,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Icons.shopping_cart,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Icons.person,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
