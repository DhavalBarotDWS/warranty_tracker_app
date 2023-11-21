import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:warranty_tracker_app/utils/colors.dart';
import 'package:warranty_tracker_app/views/screens/intro_screen.dart';
import 'package:warranty_tracker_app/views/screens/welcome_screen.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int selectedLanguageId = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose the language'.tr,
                style: const TextStyle(
                  fontSize: 22,
                  fontFamily: 'OnestSemiBold',
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              languageOption(1, "English", size),
              const SizedBox(
                height: 20,
              ),
              languageOption(2, "हिंदी", size),
              const SizedBox(
                height: 20,
              ),
              languageOption(3, "ગુજરાતી", size),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  updateLocaleAndNavigate();
                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    color: AppColors.blackColor,
                  ),
                  child: Center(
                    child: Text(
                      'Next'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'OnestSemiBold',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget languageOption(int languageId, String languageName, Size size) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedLanguageId = languageId;
          if (selectedLanguageId == 1) {
            Get.updateLocale(const Locale('en', 'US'));
          } else if (selectedLanguageId == 2) {
            Get.updateLocale(const Locale('hi', 'IN'));
          } else if (selectedLanguageId == 3) {
            Get.updateLocale(const Locale('gu', 'IN'));
          } else {
            Get.updateLocale(const Locale('en', 'US'));
          }
        });
      },
      child: Container(
        height: 50,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.borderColor),
          shape: BoxShape.rectangle,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(width: 20),
                Text(
                  languageName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'OnestMedium',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            selectedLanguageId == languageId
                ? Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          'assets/icons/tick.svg',
                          height: 30,
                          width: 30,
                        ),
                      const SizedBox(width: 20),
                    ],
                  ),
                )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }

  void updateLocaleAndNavigate() {
    if (selectedLanguageId == 1) {
      Get.updateLocale(const Locale('en', 'US'));
    } else if (selectedLanguageId == 2) {
      Get.updateLocale(const Locale('hi', 'IN'));
    } else if (selectedLanguageId == 3) {
      Get.updateLocale(const Locale('gu', 'IN'));
    } else {
      Get.updateLocale(const Locale('en', 'US'));
    }
    Get.to(() => const IntroScreen());
  }
}
