import 'package:aora/theme/app_pallete.dart';
import 'package:aora/widgets/post_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () => Navigator.pushNamed(context, "login"),
                    icon: const Icon(
                      Icons.logout_rounded,
                      size: 26,
                      color: Color(0xFFFF5B5B),
                    ))
              ],
            ),
            Image.asset("assets/images/avatar.png"),
            const SizedBox(height: 15),
            Text(
              "jsmastery",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: AppPallete.whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "10",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: AppPallete.whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 20)),
                    ),
                    Text(
                      "Posts",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: AppPallete.whiteColorShade1,
                              fontWeight: FontWeight.w400,
                              fontSize: 14)),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    Text(
                      "1.2K",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: AppPallete.whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 20)),
                    ),
                    Text(
                      "Views",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: AppPallete.whiteColorShade1,
                              fontWeight: FontWeight.w400,
                              fontSize: 14)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 45),
            const PostItem(
              userName: "jsmastery",
              userAvatar: "avatar.png",
              videoTitle:
                  "Businessman Work with Laptop Computer in Office Manager Solving Problem",
              thumbnailImage: "thumbnail-video-1.png",
            ),
            const SizedBox(height: 40),
            const PostItem(
              userName: "jsmastery",
              userAvatar: "avatar.png",
              videoTitle:
                  "Bull trading with computer Bullish in Stock market and",
              thumbnailImage: "thumbnail-video-2.png",
            ),
          ],
        ),
      ),
    ));
  }
}
