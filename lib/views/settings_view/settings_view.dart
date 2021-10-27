import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/constants/app_colors.dart';
import 'package:test_app/constants/app_images.dart';
import 'package:test_app/models/settings_item_model.dart';
import 'package:test_app/utils/dimensions.dart';
import 'package:test_app/views/settings_view/widgets/bottom_navigation_section.dart';
import 'package:test_app/views/settings_view/widgets/custom_appbar.dart';
import 'package:test_app/views/settings_view/widgets/settings_tile.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationSection(),
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: -100,
            top: -100,
            child: Image.asset(AppImages.bgIcon),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    const CustomAppBar(),
                    context.spacing(height: 5),
                    // const SettingsTile(),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return SettingsTile(
                            item: settingsItems[index],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return index == settingsItems.length - 2
                              ? const SizedBox(height: 100)
                              : const SizedBox(height: 50);
                        },
                        itemCount: settingsItems.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
