import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:warranty_tracker_app/utils/colors.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = AppColors.blackColor;
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = AppColors.borderColor;

    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 20,
        fontFamily: 'OnestMedium',
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        resizeToAvoidBottomInset: true,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: SvgPicture.asset(
                                'assets/icons/arrow_with_border.svg',
                                height: 50,
                                width: 50,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'One Step Closer to \nSecurity'.tr,
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
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Verify your email with the OTP.'.tr,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            fontFamily: 'OnestRegular',
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkGrey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'OTP sent on '.tr,
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'OnestMedium',
                                fontWeight: FontWeight.w400,
                                color: AppColors.otpGrey),
                          ),
                          Text(
                            'Krunalmodi@gmail.com '.tr,
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'OnestRegular',
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor),
                          ),
                          const Icon(
                            Icons.edit_outlined,
                            size: 20,
                            color: AppColors.darkGrey,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Directionality(
                              // Specify direction if desired
                              textDirection: TextDirection.ltr,
                              child: Pinput(
                                controller: pinController,
                                focusNode: focusNode,
                                // androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                                // listenForMultipleSmsOnAndroid: true,
                                defaultPinTheme: defaultPinTheme,
                                separatorBuilder: (index) => const SizedBox(width: 8),
                                validator: (value) {
                                  return value == '1234' ? null : 'Pin is incorrect';
                                },
                                // onClipboardFound: (value) {
                                //   debugPrint('onClipboardFound: $value');
                                //   pinController.setText(value);
                                // },
                                hapticFeedbackType: HapticFeedbackType.lightImpact,
                                onCompleted: (pin) {
                                  debugPrint('onCompleted: $pin');
                                },
                                onChanged: (value) {
                                  debugPrint('onChanged: $value');
                                },
                                cursor: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      width: 22,
                                      height: 1,
                                      color: focusedBorderColor,
                                    ),
                                  ],
                                ),
                                focusedPinTheme: defaultPinTheme.copyWith(
                                  decoration: defaultPinTheme.decoration!.copyWith(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: focusedBorderColor),
                                  ),
                                ),
                                submittedPinTheme: defaultPinTheme.copyWith(
                                  decoration: defaultPinTheme.decoration!.copyWith(
                                    color: fillColor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: focusedBorderColor),
                                  ),
                                ),
                                errorPinTheme: defaultPinTheme.copyBorderWith(
                                  border: Border.all(color: Colors.redAccent),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Text(
                        'Resend OTP in 23s'.tr,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          fontFamily: 'OnestRegular',
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Text(
                        'Resend OTP'.tr,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          fontFamily: 'OnestBold',
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: const BoxDecoration(
                color: AppColors.blackColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: InkWell(
                onTap: () {
                  // _login();
                  focusNode.unfocus();
                  formKey.currentState!.validate();
                  setState(() {});
                },
                child: Center(
                  child: Text(
                    'Verify'.tr,
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'OnestSemiBold',
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteColor),
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
    );
  }
}
