import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:test_app/constants/app_colors.dart';
import 'package:test_app/utils/dimensions.dart';
import 'package:test_app/views/import_from_seed_view/widgets/app_bar.dart';
import 'package:test_app/views/import_from_seed_view/widgets/inputfeild.dart';
import 'package:test_app/widgets/toggle_button.dart';

class ImportFromScreen extends StatelessWidget {
  const ImportFromScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.borderColor,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      style: GoogleFonts.archivo(color: Colors.white),
                      maxLines: 3,
                      minLines: 1,
                      decoration: InputDecoration(
                        suffixIcon:
                            const Icon(Remix.eye_line, color: Colors.white),
                        border: InputBorder.none,
                        label: Text(
                          'Seed Phrase',
                          style: GoogleFonts.archivo(
                            color: AppColors.labelColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Icon(Remix.qr_scan_2_line,
                    color: Colors.blue, size: context.getHeight(3.5))
              ],
            ),
            const SizedBox(height: 40),
            const InputField(label: 'New Password'),
            const SizedBox(height: 40),
            const InputField(label: 'Conform Password'),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Sign in with Face ID?',
                  style: GoogleFonts.archivo(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: context.getHeight(2),
                  ),
                ),
                ToggleButton(),
              ],
            ),
            const SizedBox(height: 50),
            RichText(
              text: TextSpan(
                text: 'By proceeding, you agree to these',
                style: GoogleFonts.archivo(
                  color: AppColors.lightGrey,
                  fontSize: context.getHeight(1.8),
                ),
                children: [
                  TextSpan(
                    text: 'Term and\n Conditions.',
                    style: GoogleFonts.archivo(
                      color: Colors.blue,
                      fontSize: context.getHeight(1.8),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: context.getWidth(100),
              height: context.getHeight(6),
              decoration: BoxDecoration(
                gradient: AppColors.selectedGradient,
                borderRadius: BorderRadius.circular(
                  context.getWidth(100) / 2,
                ),
              ),
              child: Center(
                child: Text(
                  'Import',
                  style: GoogleFonts.archivo(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: context.getHeight(2),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
