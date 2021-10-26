import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/utils/dimensions.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: Text(
        'Settings',
        style: GoogleFonts.archivo(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: context.getHeight(2),
        ),
      ),
    );
  }
}
