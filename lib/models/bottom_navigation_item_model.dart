import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class BottomNavigationItemModel {
  final String? title;
  final IconData? icon;

  BottomNavigationItemModel(this.title, this.icon);


}
  List<BottomNavigationItemModel> bottomNavs = [
  BottomNavigationItemModel('Wallet', Remix.wallet_line),
  BottomNavigationItemModel('Swap', Remix.swap_line),
  BottomNavigationItemModel('Wallet', Remix.settings_line),
];
