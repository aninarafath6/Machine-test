import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/constants/app_colors.dart';
import 'package:test_app/models/bottom_navigation_item_model.dart';
import 'package:test_app/utils/dimensions.dart';
import 'package:test_app/widgets/gradient_icon.dart';
import 'package:test_app/widgets/gradient_text.dart';

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    Key? key,
    required this.item,
    required this.selected,
  }) : super(key: key);

  final BottomNavigationItemModel item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        !selected
            ? Icon(
                item.icon,
                color: AppColors.lightGrey,
                size: 30,
              )
            : GradientIcon(
                icon: item.icon,
                gradient: AppColors.selectedGradient,
              ),
        const SizedBox(height: 5),
        !selected
            ? Text(
                item.title.toString(),
                style: GoogleFonts.archivo(
                  color: AppColors.lightGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: context.getHeight(1.5),
                ),
              )
            : GradientText(
                item.title!,
                style: GoogleFonts.archivo(
                  color: AppColors.lightGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: context.getHeight(1.5),
                ),
                gradient: AppColors.selectedGradient,
              ),
      ],
    );
  }
}
