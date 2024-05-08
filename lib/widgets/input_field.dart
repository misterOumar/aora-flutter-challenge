import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_pallete.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  const InputField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    bool istextVisible = widget.isObscureText;
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF1E1E2D),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        controller: widget.controller,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppPallete.whiteColor),
        ),
        cursorColor: AppPallete.borderColor,
        cursorWidth: 3.0,
        decoration: InputDecoration(
            suffixIcon: widget.isObscureText
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        istextVisible = !istextVisible;
                      });
                    },
                    icon: Icon(widget.isObscureText
                        ? Icons.visibility_off
                        : Icons.visibility),
                  )
                : null,
            hintText: widget.hintText,
            labelStyle: const TextStyle(color: AppPallete.gradient1)),
        validator: (value) {
          if (value!.isEmpty) {
            return "${widget.hintText} is missing !";
          }
          return null;
        },
        obscureText: istextVisible,
      ),
    );
  }
}
