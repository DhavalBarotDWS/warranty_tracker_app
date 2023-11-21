import 'package:flutter/material.dart';
import 'package:warranty_tracker_app/utils/colors.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          color: AppColors.blackColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor, // Set the shadow color
              blurRadius: 10, // Set the blur radius
              offset: Offset(0, 4), // Set the offset
            ),
          ],
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.add,
          color: AppColors.whiteColor,
          size: 40,
        ),
      ),
    );
  }
}
