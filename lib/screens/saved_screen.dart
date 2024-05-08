import 'package:aora/constants.dart';
import 'package:aora/theme/app_pallete.dart';
import 'package:aora/widgets/post_item.dart';
import 'package:aora/widgets/search_input-field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saved Videos",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: AppPallete.whiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 24)),
                ),
                gapH20,
                const SearchInput(),
                gapH32,
                const PostItem(
                    userName: "Johnson",
                    userAvatar: "avatar-Johnson.png",
                    videoTitle:
                        "The camera follows behind a white vintage SUV with a black roof rack as it speeds up a steep dirt road surrounded by pine trees on a steep mountain slope, ",
                    thumbnailImage: "thumbnail-post-Johnson.png"),
                gapH32,
                const PostItem(
                    userName: "Christopher",
                    userAvatar: "avatar-Christopher.png",
                    videoTitle:
                        "Close up on cartoon character boy on social media",
                    thumbnailImage: "thumbnail-post-Christopher.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
