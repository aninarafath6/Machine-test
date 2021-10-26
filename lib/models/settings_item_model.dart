import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class SettingsItemModel {
  final IconData? icon;
  final String? title;
  final Function()? onTap;

  SettingsItemModel(this.icon, this.title, this.onTap);
}

List<SettingsItemModel> settingsItems = [
  SettingsItemModel(Remix.account_circle_line, 'Account', () => null),
  SettingsItemModel(Remix.share_line, 'Share My Public Address', () => null),
  SettingsItemModel(Remix.eye_line, 'Preference', () => null),
  SettingsItemModel(Remix.settings_4_line, 'Get Help', () => null),
  SettingsItemModel(
      Remix.customer_service_2_line, 'Sent Feed Back', () => null),
  SettingsItemModel(Remix.logout_circle_r_line, 'Logout', () => null),
];
