import 'package:flutter/material.dart';
import 'package:warranty_tracker_app/utils/colors.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isObscure;
  final IconData icon;

  const TextInputField({super.key, required this.controller, required this.labelText, this.isObscure = false, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon,color: AppColors.blackColor),
        labelStyle: const TextStyle(fontSize: 20,color: AppColors.blackColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.grey)
        ),
        focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.grey)
        ),
      ),
      obscureText: isObscure,
    );
  }
}
