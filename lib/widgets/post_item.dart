import 'package:aora/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostItem extends StatelessWidget {
  final String thumbnailImage;
  final String userAvatar;
  final String videoTitle;
  final String userName;
  const PostItem({
    super.key,
    required this.userName,
    required this.userAvatar,
    required this.videoTitle,
    required this.thumbnailImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/$userAvatar"),
                      fit: BoxFit.cover),
                  border: Border.all(color: AppPallete.borderColor, width: 2),
                  borderRadius: BorderRadius.circular(8)),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    videoTitle,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppPallete.whiteColor),
                    ),
                  ),
                  Text(
                    userName,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppPallete.whiteColorShade1),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.more_vert)
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage("assets/images/$thumbnailImage"),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }
}
