import 'package:aora/theme/app_pallete.dart';
import 'package:aora/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo/logo.png",
                width: 115,
              ),
              Image.asset(
                "assets/images/onboarding-img.png",
                width: 375,
              ),
              const SizedBox(height: 15),
              Text(
                "Discover Endless Possibilities with Aora",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Where Creativity Meets Innovation: Embark on a Journey of Limitless Exploration with Aora",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppPallete.whiteColorShade1),
                ),
              ),
              const SizedBox(height: 15),
              const GradientButton(
                text: "Continue with Email",
                routName: "login",
              ),
            ]),
      ),
    );
  }
}
