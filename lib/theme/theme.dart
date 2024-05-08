import 'package:aora/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Color(0xFF232533)),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppPallete.borderColor, width: 2),
        ),
        hintStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppPallete.placeholderColor),
        ),
        contentPadding: const EdgeInsets.all(20)),
  );
}
