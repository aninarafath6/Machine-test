import 'package:flutter/material.dart';
import 'package:test_app/models/bottom_navigation_item_model.dart';
import 'package:test_app/views/settings_view/widgets/bottom_navigation_item.dart';

class BottomNavigationSection extends StatelessWidget {
  const BottomNavigationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomNavs.length,
            (index) => BottomNavigationItem(
              item: bottomNavs[index],
              selected: index == bottomNavs.length - 1,
            ),
          ),
        ),
      ),
    );
  }
}
