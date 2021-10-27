import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:test_app/utils/dimensions.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(
        Remix.arrow_left_s_line,
        size: context.getHeight(3),
      ),
      onPressed: () => Navigator.pop(context),
    ),
    title: Text(
      'Import From Seed',
      style: GoogleFonts.archivo(
        fontWeight: FontWeight.w600,
        fontSize: context.getHeight(2),
      ),
    ),
  );
}
