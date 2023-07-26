import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/views/controllers/mainscreen_provider.dart';
import 'package:shop_app/views/shared/bottom_nav_widget.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return SafeArea(
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
                    onTap: () {
                      mainScreenNotifier.pageIndex = 0;
                    },
                    icon: mainScreenNotifier.pageIndex == 0
                        ? Icons.home
                        : Icons.home_outlined,
                  ),
                  BottomNavWidget(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 1;
                    },
                    icon: mainScreenNotifier.pageIndex == 1
                        ? Icons.search
                        : Icons.search_outlined,
                  ),
                  BottomNavWidget(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 2;
                    },
                    icon: mainScreenNotifier.pageIndex == 2
                        ? Icons.add_circle
                        : Icons.add_circle_outline,
                  ),
                  BottomNavWidget(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 3;
                    },
                    icon: mainScreenNotifier.pageIndex == 3
                        ? Icons.shopping_cart
                        : Icons.shopping_cart_outlined,
                  ),
                  BottomNavWidget(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 4;
                    },
                    icon: mainScreenNotifier.pageIndex == 4
                        ? Icons.person
                        : Icons.person_outline,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
