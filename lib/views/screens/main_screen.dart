import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warranty_tracker_app/constants/constants.dart';
import 'package:warranty_tracker_app/utils/colors.dart';
import 'package:warranty_tracker_app/views/widgets/custom_icon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'OnestRegular',
          color: AppColors.blackColor
        ),
        unselectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'OnestRegular',
            color: AppColors.blackColor
        ),
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.bottomBg,
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: AppColors.blackColor,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg',height: 34,width: 34,), label: 'Home'),
          const BottomNavigationBarItem(icon: Padding(
            padding: EdgeInsets.only(top: 15),
            child: CustomIcon(),
          ), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/settings.svg',height: 34,width: 34), label: 'Settings')
        ],
      ),
      body: pages[_currentIndex],
    );
    // return Scaffold(
    //   backgroundColor: whiteColor,
    //   body: pages[_currentIndex],
    //   bottomNavigationBar: CurvedNavigationBar(
    //     backgroundColor: whiteColor,
    //     color: primaryColor,
    //     onTap: onTabTapped,
    //     animationDuration: const Duration(milliseconds: 300),
    //     items: [
    //       Icon(Icons.home, size: 30,color: whiteColor,),
    //       Icon(Icons.add, size: 30,color: whiteColor,),
    //       Icon(Icons.settings, size: 30,color: whiteColor,),
    //     ],
    //     index: _currentIndex,
    //   ),
    // );
  }
}
