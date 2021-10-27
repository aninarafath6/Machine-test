import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:test_app/constants/app_colors.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        obscureText: true,
        obscuringCharacter: '*',
        style: GoogleFonts.archivo(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          label: Text(
            label,
            style: GoogleFonts.archivo(
              color: AppColors.labelColor,
            ),
          ),
          suffixIcon: const Icon(
            Remix.eye_line,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
