import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/views/controllers/mainscreen_provider.dart';
import 'package:shop_app/views/shared/bottom_nav.dart';
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
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
