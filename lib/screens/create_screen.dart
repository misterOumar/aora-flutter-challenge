import 'package:aora/theme/app_pallete.dart';
import 'package:aora/widgets/gradient_button.dart';
import 'package:aora/widgets/input_field.dart';
import 'package:aora/widgets/label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final videoTileController = TextEditingController();

  @override
  void dispose() {
    videoTileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upload Video",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: AppPallete.whiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 22)),
                ),
                const SizedBox(height: 25),
                const Label(title: "Video Title"),
                InputField(
                    hintText: "Give your video a catchy title...",
                    controller: videoTileController),
                const SizedBox(height: 20),
                const Label(title: "Upload Video"),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: const Color(0xFF1E1E2D),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: SvgPicture.asset(
                          "assets/images/upload_video_icon.svg"),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Label(title: "Thumbnail Image"),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color(0xFF1E1E2D),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            "assets/images/solar_upload-bold-duotone.svg"),
                        SizedBox(width: 10),
                        Text(
                          "Choose a file",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: AppPallete.whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const Label(title: "AI Prompt"),
                InputField(
                    hintText: "The AI prompt of your video....",
                    controller: videoTileController),
                const SizedBox(height: 25),
                const GradientButton(
                    text: "Submit & Publish", routName: "routName")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
