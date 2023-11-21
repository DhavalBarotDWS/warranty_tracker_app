import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warranty_tracker_app/constants/constants.dart';
import 'package:warranty_tracker_app/utils/colors.dart';
import 'package:warranty_tracker_app/views/screens/auth/sign_up_screen.dart';
import 'package:warranty_tracker_app/views/screens/main_screen.dart';
import 'package:warranty_tracker_app/views/widgets/text_input_field.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _emailController = TextEditingController();
  late final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController.text = "demo@gmail.com";
    _passwordController.text = "123456aA";
  }

  bool _validateEmail(String email) {
    // You can use a regular expression for email validation
    // This is a simple example, you can use a more complex regex for better validation
    return RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$').hasMatch(email);
  }

  bool _validatePassword(String password) {
    // Check if the password has a minimum length of 6 characters
    // and contains at least one small letter and one capital letter
    return password.length >= 6 &&
        password.contains(RegExp(r'[a-z]')) &&
        password.contains(RegExp(r'[A-Z]'));
  }

  void _login() {
    // Perform validation before navigating to the main screen
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (!_validateEmail(email)) {
      // Show an error message for invalid email
      // You can use a Flutter toast or a Snackbar to display the message
      // var snackBar = const SnackBar(content: Text('Invalid email format'));
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Get.snackbar('Invalid email format', 'Please enter valid email format');
    } else if (!_validatePassword(password)) {
      // Show an error message for invalid password
      // var snackBar = const SnackBar(content: Text('Invalid password format'));
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Get.snackbar('Invalid password format', 'Please enter valid password format');
    } else {
      // Validation successful, navigate to the main screen
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainScreen()));
    }
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
                        'Your Secure Gateway to \nCoverage'.tr,
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
                    'Login with WarrantyVault.'.tr,
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
                            'assets/icons/password.svg', // Replace with the path to your image
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot your Password?'.tr,
                        style: const TextStyle(
                            fontSize: 18,
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
                                child: Text('Or Sign In With',style: TextStyle(color: AppColors.blackColor,fontSize: 16,fontFamily: 'OnestMedium'),),
                              ),
                              Expanded(child: Divider(height: 1,color: AppColors.darkGrey,endIndent: 10,))
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Container(
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
                                  'Sign in with Google'.tr,
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
                  const SizedBox(height: 60,),
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
                        _login();
                        setState(() {});
                      },
                      child: Center(
                        child: Text(
                          'Login'.tr,
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
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: AppColors.bottomBg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            )
                        );
                      },
                      child: Center(
                        child: Text(
                          'Create an account'.tr,
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'OnestMedium',
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'Don\'t have an account?'.tr,
                  //       style: const TextStyle(
                  //         fontSize: 20,
                  //         color: AppColors.blackColor
                  //       ),
                  //     ),
                  //     InkWell(
                  //       onTap: () => Navigator.of(context).push(
                  //         MaterialPageRoute(
                  //           builder: (context) => const SignUpScreen(),
                  //         ),
                  //       ),
                  //       child: Text(
                  //         'Register'.tr,
                  //         style: const TextStyle(fontSize: 20, color: AppColors.primaryColor),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
