import 'package:aora/theme/app_pallete.dart';
import 'package:aora/widgets/gradient_button.dart';
import 'package:aora/widgets/label.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo/logo.png",
                    width: 115,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Sign up",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Label(title: "Username"),
                  InputField(
                    hintText: "Your unique username",
                    controller: nameController,
                  ),
                  const SizedBox(height: 15),
                  const Label(title: "Email"),
                  InputField(
                    hintText: "Your unique email",
                    controller: emailController,
                  ),
                  const SizedBox(height: 15),
                  const Label(title: "Password"),
                  InputField(
                    hintText: "* * * * * * *",
                    controller: passwordController,
                    isObscureText: true,
                  ),
                  const SizedBox(height: 30),
                  const GradientButton(text: "Sign Up", routName: "routName"),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "login"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "Already have an account? ",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppPallete.whiteColorShade1),
                              ),
                              children: const [
                                TextSpan(
                                    text: "Login",
                                    style: TextStyle(
                                        color: AppPallete.borderColor))
                              ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
