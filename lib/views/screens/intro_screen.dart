import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warranty_tracker_app/utils/colors.dart';
import 'package:warranty_tracker_app/views/screens/auth/login_screen.dart';
import 'package:warranty_tracker_app/views/screens/auth/sign_up_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int _currentPage = 0;
  List<Map<String, String>> introData = [
    {
      'title': 'Seamless Warranty Management',
      'subTitle': 'Warranty Management Made \n Simple, Thanks to WarrantyVault.',
      'image': 'assets/images/welcome_1.jpg'
    },
    {
      'title': 'Where Warranties and Documents Find Security.',
      'subTitle': 'Your Digital Safe for Important Documents.',
      'image': 'assets/images/welcome_1.jpg'
    },
    {
      'title': 'Smart Protection, Smart Reminders',
      'subTitle': 'Receive Timely Reminders with WarrantyVault.',
      'image': 'assets/images/welcome_1.jpg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                  flex: 6,
                  child: PageView.builder(
                    itemCount: introData.length,
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.close,color: AppColors.blackColor,),
                              Text('Skip',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor,
                                fontFamily: 'OnestMedium'
                              ),),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 380,
                              width: double.infinity,
                              color: AppColors.dummyContainer),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            introData[index]['title']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'OnestBold'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            introData[index]['subTitle']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'OnestRegular'),
                          ),
                        ],
                      );
                    },
                  )),
              Expanded(
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(introData.length,
                                (index) => buildDots(index: index)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _currentPage == 2
                          ? Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Get.to(()=>const LoginScreen());
                              },
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,
                                  color: AppColors.blackColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Sign in'.tr,
                                    style: const TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 20,
                                      fontFamily: 'OnestSemiBold',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Get.to(()=>const SignUpScreen());
                              },
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,
                                  color: AppColors.dummyContainer,
                                ),
                                child: Center(
                                  child: Text(
                                    'Sign Up'.tr,
                                    style: const TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 20,
                                      fontFamily: 'OnestSemiBold',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                          : InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: double.infinity,
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
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

  buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: 6,
      // width: _currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: _currentPage == index
              ? AppColors.blackColor
              : AppColors.borderColor,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
