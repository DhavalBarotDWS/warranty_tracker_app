import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:warranty_tracker_app/utils/colors.dart';
import 'package:warranty_tracker_app/views/screens/auth/login_screen.dart';
import 'package:warranty_tracker_app/views/screens/auth/otp_screen.dart';
import 'package:warranty_tracker_app/views/widgets/text_input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // _emailController.text = "demo@gmail.com";
    // _passwordController.text = "123456";
    // _usernameController.text = "Demo User";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Warranties, Your Way'.tr,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          fontFamily: 'OnestSemiBold',
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    'Securely Sign Up with WarrantyVault.'.tr,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'OnestRegular',
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkGrey
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
                        controller: _usernameController,
                        decoration: InputDecoration(
                          labelText: 'Enter your name*',
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/icons/user.svg', // Replace with the path to your image
                              colorFilter: const ColorFilter.mode(AppColors.darkGrey, BlendMode.srcIn),
                              width: 24,
                              height: 24,
                            ),
                          ),
                          labelStyle: const TextStyle(fontSize: 18,color: AppColors.blackColor),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: AppColors.lightGrey)
                          ),
                          focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: AppColors.lightGrey)
                          ),
                        ),
                      )
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Enter your email*',
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/icons/email.svg', // Replace with the path to your image
                              colorFilter: const ColorFilter.mode(AppColors.darkGrey, BlendMode.srcIn),
                              width: 24,
                              height: 24,
                            ),
                          ),
                          labelStyle: const TextStyle(fontSize: 18,color: AppColors.blackColor),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: AppColors.lightGrey)
                          ),
                          focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: AppColors.lightGrey)
                          ),
                        ),
                      )
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Enter your password*',
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/icons/lock.svg', // Replace with the path to your image
                              colorFilter: const ColorFilter.mode(AppColors.darkGrey, BlendMode.srcIn),
                              width: 24,
                              height: 24,
                            ),
                          ),
                          labelStyle: const TextStyle(fontSize: 18,color: AppColors.blackColor),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: AppColors.lightGrey)
                          ),
                          focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: AppColors.lightGrey)
                          ),
                        ),
                      )
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
                        obscureText: true,
                        controller: _confirmPasswordController,
                        decoration: InputDecoration(
                          labelText: 'Enter your confirm password*',
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/icons/lock.svg', // Replace with the path to your image
                              colorFilter: const ColorFilter.mode(AppColors.darkGrey, BlendMode.srcIn),
                              width: 24,
                              height: 24,
                            ),
                          ),
                          labelStyle: const TextStyle(fontSize: 18,color: AppColors.blackColor),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: AppColors.lightGrey)
                          ),
                          focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: AppColors.lightGrey)
                          ),
                        ),
                      )
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'By Continuing, you agree to our'.tr,
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'OnestMedium',
                            fontWeight: FontWeight.w500,
                            color: AppColors.darkGrey
                        ),
                      ),
                      Text(
                        ' terms of service'.tr,
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'OnestMedium',
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: AppColors.lightGrey),
                      shape: BoxShape.rectangle,
                      color: AppColors.whiteColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          const Row(
                            children: [
                              Expanded(child: Divider(height: 1,color: AppColors.darkGrey,indent: 10,)),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6),
                                child: Text('Or Sign Up With',style: TextStyle(color: AppColors.blackColor,fontSize: 16,fontFamily: 'OnestMedium'),),
                              ),
                              Expanded(child: Divider(height: 1,color: AppColors.darkGrey,endIndent: 10,))
                            ],
                          ),
                          const SizedBox(height: 20,),
                          GestureDetector(
                            onTap: (){
                              Get.to(()=>const OTPScreen());
                            },
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,
                                  color: AppColors.whiteColor,
                                  border: Border.all(color: AppColors.blackColor,width: 1)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/icons/google.svg',height: 30,width: 30,),
                                  const SizedBox(width: 14,),
                                  Text(
                                    'Sign up with Google'.tr,
                                    style: const TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 18,
                                      fontFamily: 'OnestMedium',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                              color: AppColors.blackColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons/apple.svg',height: 30,width: 30,),
                                const SizedBox(width: 14,),
                                Text(
                                  'Continue with Apple'.tr,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'OnestMedium',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: AppColors.blackColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: InkWell(
                      onTap: (){
                        // _login();
                        setState(() {});
                      },
                      child: Center(
                        child: Text(
                          'Create your account'.tr,
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'OnestSemiBold',
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteColor
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    // return Scaffold(
    //   backgroundColor: AppColors.whiteColor,
    //   body: Container(
    //     alignment: Alignment.center,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text(
    //           'Warranty Tracker'.tr,
    //           style: const TextStyle(
    //             fontSize: 35,
    //             color: AppColors.primaryColor,
    //             fontWeight: FontWeight.w900,
    //           ),
    //         ),
    //         Text(
    //           'Register'.tr,
    //           style: const TextStyle(
    //             fontSize: 25,
    //             fontWeight: FontWeight.w700,
    //               color: AppColors.blackColor
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 25,
    //         ),
    //         const SizedBox(
    //           height: 15,
    //         ),
    //         Container(
    //           width: MediaQuery.of(context).size.width,
    //           margin: const EdgeInsets.symmetric(horizontal: 20),
    //           child: TextInputField(
    //             controller: _usernameController,
    //             labelText: 'Username'.tr,
    //             icon: Icons.person,
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 15,
    //         ),
    //         Container(
    //           width: MediaQuery.of(context).size.width,
    //           margin: const EdgeInsets.symmetric(horizontal: 20),
    //           child: TextInputField(
    //             controller: _emailController,
    //             labelText: 'Email'.tr,
    //             icon: Icons.email,
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 15,
    //         ),
    //         Container(
    //           width: MediaQuery.of(context).size.width,
    //           margin: const EdgeInsets.symmetric(horizontal: 20),
    //           child: TextInputField(
    //             controller: _passwordController,
    //             labelText: 'Password'.tr,
    //             icon: Icons.lock,
    //             isObscure: true,
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 30,
    //         ),
    //         Container(
    //           width: MediaQuery.of(context).size.width - 40,
    //           height: 50,
    //           decoration: const BoxDecoration(
    //             color: AppColors.primaryColor,
    //             borderRadius: BorderRadius.all(
    //               Radius.circular(5),
    //             ),
    //           ),
    //           child: InkWell(
    //             // onTap: () => authController.registerUser(
    //             //     _usernameController.text,
    //             //     _emailController.text,
    //             //     _passwordController.text,
    //             //     authController.profilePhoto),
    //             child: Center(
    //               child: Text(
    //                 'Register'.tr,
    //                 style: const TextStyle(
    //                   fontSize: 20,
    //                   fontWeight: FontWeight.w700,
    //                   color: AppColors.whiteColor
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 15,
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Text(
    //               'Already have an account?'.tr,
    //               style: const TextStyle(
    //                 fontSize: 20,
    //                   color: AppColors.blackColor
    //               ),
    //             ),
    //             InkWell(
    //               onTap: () => Navigator.of(context).push(
    //                 MaterialPageRoute(
    //                   builder: (context) => const LoginScreen(),
    //                 ),
    //               ),
    //               child: Text(
    //                 'Login'.tr,
    //                 style: const TextStyle(fontSize: 20, color: AppColors.primaryColor),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
