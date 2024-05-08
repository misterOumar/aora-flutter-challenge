import 'package:aora/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Label extends StatelessWidget {
  final String title;
  const Label({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppPallete.whiteColorShade1),
        ),
      ),
    );
  }
}
