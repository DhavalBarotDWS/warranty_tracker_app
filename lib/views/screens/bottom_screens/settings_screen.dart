import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warranty_tracker_app/utils/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final List<String> languages = [
    'English',
    'हिंदी',
    'ગુજરાતી',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Settings'.tr,
                style: const TextStyle(
                  fontSize: 35,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 40,),
              settingsItem('About Us'.tr, Icons.account_circle_outlined),
              settingsItem('Rate App'.tr, Icons.star_rate_outlined),
              settingsItem('Privacy Policy'.tr, Icons.policy_outlined),
              settingsItem('Delete Account'.tr, Icons.person_remove_alt_1_outlined),
              Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    gradient: const LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: <Color>[Colors.white, AppColors.primaryColor],
                    )),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.language,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          hint: Row(
                            children: [
                              Text(
                                'Select Language'.tr,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          items: languages
                              .map((String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              updateLanguage(value!);
                            });
                          },
                          buttonStyleData: ButtonStyleData(
                            height: 50,
                            width: size.width,
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              // gradient: const LinearGradient(
                              //           begin: Alignment.centerRight,
                              //           end: Alignment.centerLeft,
                              //           colors: <Color>[Colors.white, primaryColor],
                              // )
                            ),
                          ),
                          iconStyleData: const IconStyleData(
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                            ),
                            iconSize: 14,
                            iconEnabledColor: Colors.white,
                            iconDisabledColor: Colors.grey,
                          ),
                          dropdownStyleData: DropdownStyleData(
                            maxHeight: 200,
                            width: size.width * 0.7,
                            direction: DropdownDirection.textDirection,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: AppColors.blackColor,
                            ),
                            offset: const Offset(-20, 0),
                            scrollbarTheme: ScrollbarThemeData(
                              radius: const Radius.circular(40),
                              thickness: MaterialStateProperty.all(6),
                              thumbVisibility: MaterialStateProperty.all(true),
                            ),
                          ),
                          isDense: true,
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                            padding: EdgeInsets.only(left: 14, right: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      color: Colors.red),
                  child: Center(
                      child: Text(
                    'Logout'.tr,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget settingsItem(title, icon) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 50,
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              gradient: const LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: <Color>[Colors.white, AppColors.primaryColor],
              )),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 30,
                  )),
              Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  void updateLanguage(String value) async{
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.reload();
    selectedValue = value;
    if(selectedValue == "English"){
      myPrefs.setString("languageCode", "en_Us");
      Get.updateLocale(const Locale('en', 'US'));
    }else if(selectedValue == "हिंदी"){
      myPrefs.setString("languageCode", "hi_IN");
      Get.updateLocale(const Locale('hi', 'IN'));
    }else if(selectedValue == "ગુજરાતી"){
      myPrefs.setString("languageCode", "gu_IN");
      Get.updateLocale(const Locale('gu', 'IN'));
    }else{
      myPrefs.setString("languageCode", "en_US");
      Get.updateLocale(const Locale('en', 'US'));
    }
  }
}
