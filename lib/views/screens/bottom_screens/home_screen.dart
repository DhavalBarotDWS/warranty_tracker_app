import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warranty_tracker_app/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              settingsItem(
                  "",
                  // "https://instorestatic.tcl.com/media/catalog/product/0/1/01.png",
                  "TVS Gold Prime Mechanical Keyboard".tr,
                  156,
                  "2025-11-04"),
              settingsItem(
                  "",
                  // "https://sukienphuongnam.vn/wp-content/uploads/2022/10/iphone-13-pro-azul-sierra-real.png.png",
                  "Apple iPhone 15 Pro".tr,
                  365,
                  "2024-10-08"),
              settingsItem(
                  "",
                  // "https://sukienphuongnam.vn/wp-content/uploads/2022/10/iphone-13-pro-azul-sierra-real.png.png",
                  "The Better Home Fumato Kitchen Essential Pair|Toaster & HandBlender| Toast, Blend And Make| Perfect Gifting Kit | Colour Coordinated Sets | 1 Year Warranty (Misty Blue)".tr,
                  365,
                  "2024-10-08"),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: Text('Home'.tr,style: const TextStyle(fontSize: 20,color: blackColor),),
      // ),
    );
  }

  Widget settingsItem(productImage, title, days, expiryDate) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 120,
          width: size.width,
          decoration: BoxDecoration(
            color: AppColors.productBg,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(5).copyWith(top: 15),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: productImage == ""
                    ? Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: AppColors.productImageBg,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    : Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            color: AppColors.productImageBg,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.network(
                          productImage,
                          height: 100,
                          width: 100,
                        ),
                      ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: AppColors.productDaysLeftBg,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: AppColors.productCategoryBg,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                ' Electronics ',
                                style: TextStyle(
                                    color: AppColors.blackColor, fontSize: 12),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: AppColors.productDaysLeftBg,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                ' 365 Days Left ',
                                style: TextStyle(
                                    color: AppColors.whiteColor, fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      child: Text(
                        title,
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16,
                            fontFamily: 'OnestBold',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Expired On 20 April 2024',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColors.darkGrey,
                          fontSize: 14,
                          fontFamily: 'OnestRegular',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.more_vert,color: AppColors.blackColor,)],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
  // Widget settingsItem(productImage, title, days, expiryDate) {
  //   final size = MediaQuery.of(context).size;
  //   return Column(
  //     children: [
  //       Stack(
  //         children: [
  //           Align(
  //             alignment: Alignment.centerRight,
  //             child: Container(
  //               height: 160,
  //               width: size.width * 0.8,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(10),
  //                 border: Border.all(width: 2, color: AppColors.primaryColor),
  //               ),
  //               margin: const EdgeInsets.all(10).copyWith(top: 20),
  //               padding: const EdgeInsets.all(20),
  //               child: Row(
  //                 children: [
  //                   const Expanded(
  //                     flex: 1,
  //                       child: SizedBox(width: 60,)
  //                   ),
  //                   Expanded(
  //                     flex: 4,
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       crossAxisAlignment: CrossAxisAlignment.center,
  //                       children: [
  //                         Text(
  //                           title,
  //                           textAlign: TextAlign.center,
  //                           style: const TextStyle(
  //                               color: AppColors.blackColor,
  //                               fontSize: 16,
  //                               fontWeight: FontWeight.w700),
  //                         ),
  //                         Text(
  //                           'Days Left : $days',
  //                           style: TextStyle(
  //                               color: days > 200 ? Colors.green : Colors.red,
  //                               fontSize: 14,
  //                               fontWeight: FontWeight.w700),
  //                         ),
  //                         Text(
  //                           'Expiry Date : $expiryDate',
  //                           style: const TextStyle(
  //                               color: AppColors.blackColor,
  //                               fontSize: 14,
  //                               fontWeight: FontWeight.w700),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //           Positioned(
  //             top: 50,
  //             child: Container(
  //               height: 100,
  //               decoration: BoxDecoration(
  //                   color: AppColors.whiteColor,
  //                   border: Border.all(
  //                     width: 2,
  //                     color: AppColors.primaryColor,
  //                   ),
  //                   borderRadius: BorderRadius.circular(10)),
  //               child: Image.network(
  //                 productImage,
  //                 height: 100,
  //                 width: 100,
  //               ),
  //             ),
  //             // child: Image.network(productImage,height: 100,width: 100,),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }
}
