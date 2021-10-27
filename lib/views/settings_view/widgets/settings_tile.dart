import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:test_app/models/settings_item_model.dart';
import 'package:test_app/utils/dimensions.dart';
import 'package:test_app/views/import_from_seed_view/import_from_seed_view.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    Key? key,
    this.item,
  }) : super(key: key);
  final SettingsItemModel? item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // onTap: item!.onTap,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const ImportFromScreen()));
      },
      minLeadingWidth: 20,
      leading: Icon(
        item!.icon!,
        color: Colors.white,
        size: context.getHeight(4),
      ),
      title: Text(
        item!.title!,
        style: GoogleFonts.archivo(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: context.getHeight(2),
        ),
      ),
      trailing: const Icon(
        Remix.arrow_right_s_line,
        color: Colors.white,
      ),
    );
  }
}
