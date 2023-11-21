import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warranty_tracker_app/utils/colors.dart';
import 'package:warranty_tracker_app/views/screens/auth/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  void initState() {
    super.initState();
    _checkIfFirstTime();
  }

  _checkIfFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('firstTime') ?? true;

    if (isFirstTime) {
      // If it's the first time, show the introduction screen
      prefs.setBool('firstTime', false);
    } else {
      // If not the first time, navigate directly to the login screen
      Get.to(const LoginScreen());
    }
  }

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/images/welcome_1.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 250]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 18.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      pageMargin: EdgeInsets.all(50),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: AppColors.whiteColor,
      // globalHeader: Align(
      //   alignment: Alignment.topRight,
      //   child: SafeArea(
      //     child: Image.asset('assets/icons/logo.png', height: 100,width: 100,),
      //   ),
      // ),
      globalFooter: const SizedBox(
        width: double.infinity,
        height: 40,
      ),
      pages: [
        PageViewModel(
          title: "                             ",
          bodyWidget:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                    Image.asset(
                      'assets/icons/logo.png',
                      height: 200,
                      width: 200,
                    ),
                    const Text(
                      "Purchase and Forget ... \n Don't worry we are here to remind you about your warranties...",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.blackColor, fontSize: 20),
                    )
            ],
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 4,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: _buildImage('welcome_1.jpg'),
          reverse: true,
        ),
        PageViewModel(
          title: "                             ",
          bodyWidget:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/logo.png',
                height: 150,
                width: 150,
              ),
              const Text(
                "Purchase and Forget ... \n Don't worry we are here to remind you about your warranties...",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.blackColor, fontSize: 20),
              )
            ],
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 4,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: _buildImage('welcome_1.jpg'),
          reverse: true,
        ),
        // PageViewModel(
        //   title: "Full Screen Page",
        //   body:
        //       "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
        //   image: _buildFullscreenImage(),
        //   decoration: pageDecoration.copyWith(
        //     contentMargin: const EdgeInsets.symmetric(horizontal: 16),
        //     fullScreen: true,
        //     bodyFlex: 2,
        //     imageFlex: 3,
        //     safeArea: 100,
        //   ),
        // ),
        PageViewModel(
          title: "                             ",
          bodyWidget:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/logo.png',
                height: 200,
                width: 200,
              ),
              const Text(
                "Purchase and Forget ... \n Don't worry we are here to remind you about your warranties...",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.blackColor, fontSize: 20),
              )
            ],
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 4,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: _buildImage('welcome_1.jpg'),
          reverse: true,
        ),
        // PageViewModel(
        //   title: "Title of last page - reversed",
        //   bodyWidget: const Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text("Click on ", style: bodyStyle),
        //       Icon(Icons.edit),
        //       Text(" to edit a post", style: bodyStyle),
        //     ],
        //   ),
        //   decoration: pageDecoration.copyWith(
        //     bodyFlex: 2,
        //     imageFlex: 4,
        //     bodyAlignment: Alignment.bottomCenter,
        //     imageAlignment: Alignment.topCenter,
        //   ),
        //   image: _buildImage('welcome_1.jpg'),
        //   reverse: true,
        // ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      resizeToAvoidBottomInset: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(
        Icons.arrow_back,
        color: AppColors.primaryColor,
      ),
      skip: const Text('Skip',
          style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor)),
      next: const Icon(
        Icons.arrow_forward,
        color: AppColors.primaryColor,
      ),
      done: const Text('Done',
          style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: AppColors.primaryColor,
        activeColor: AppColors.whiteColor,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
