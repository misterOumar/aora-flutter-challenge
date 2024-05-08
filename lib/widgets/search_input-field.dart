import 'package:aora/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF1E1E2D),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppPallete.whiteColorShade1),
        ),
        cursorColor: AppPallete.borderColor,
        cursorWidth: 3.0,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppPallete.whiteColor,
              ),
            ),
            hintText: "Search for a video topic",
            labelStyle: const TextStyle(color: AppPallete.gradient1)),
      ),
    );
  }
}
