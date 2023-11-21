import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:warranty_tracker_app/utils/colors.dart';

class AddWarrantyScreen extends StatefulWidget {
  const AddWarrantyScreen({super.key});

  @override
  State<AddWarrantyScreen> createState() => _AddWarrantyScreenState();
}

class _AddWarrantyScreenState extends State<AddWarrantyScreen> {

  late final TextEditingController _productNameController = TextEditingController();
  late final TextEditingController _productCostController = TextEditingController();
  late final TextEditingController _productPurchaseDateController = TextEditingController();
  late final TextEditingController _productWarrantyValidTillController = TextEditingController();
  late final TextEditingController _productSerialNumberController = TextEditingController();
  late final TextEditingController _productIMEINumberController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add Warranty'.tr,
                style: const TextStyle(
                  fontSize: 35,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 40,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
                  controller: _productNameController,
                  decoration: InputDecoration(
                    labelText: 'Product name',
                    prefixIcon: const Icon(Icons.drive_file_rename_outline,color: AppColors.blackColor),
                    labelStyle: const TextStyle(fontSize: 20,color: AppColors.blackColor),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey)
                    ),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey)
                    ),
                  ),
                  obscureText: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child:  TextField(
                  style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
                  controller: _productCostController,
                  decoration: InputDecoration(
                    labelText: 'Product cost',
                    prefixIcon: const Icon(Icons.monetization_on_outlined,color: AppColors.blackColor),
                    labelStyle: const TextStyle(fontSize: 20,color: AppColors.blackColor),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey)
                    ),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey)
                    ),
                  ),
                  obscureText: false,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
                  controller: _productPurchaseDateController,
                  decoration: InputDecoration(
                    labelText: 'Purchase Date',
                    prefixIcon: const Icon(Icons.date_range_outlined,color: AppColors.blackColor),
                    labelStyle: const TextStyle(fontSize: 20,color: AppColors.blackColor),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey)
                    ),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey)
                    ),
                  ),
                  obscureText: false,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2100));

                    if (pickedDate != null) {
                      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16
                      setState(() {
                        _productPurchaseDateController.text = formattedDate;
                      });
                    } else {}
                  },
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
                    controller: _productWarrantyValidTillController,
                    decoration: InputDecoration(
                      labelText: 'Warranty valid till',
                      prefixIcon: const Icon(Icons.date_range_outlined,color: AppColors.blackColor),
                      labelStyle: const TextStyle(fontSize: 20,color: AppColors.blackColor),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.grey)
                      ),
                      focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.grey)
                      ),
                    ),
                    obscureText: false,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2100));

                      if (pickedDate != null) {
                        print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(formattedDate); //formatted date output using intl package =>  2021-03-16
                        setState(() {
                          _productWarrantyValidTillController.text = formattedDate;
                        });
                      } else {}
                    },
                  )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
                  controller: _productSerialNumberController,
                  decoration: InputDecoration(
                    labelText: 'Serial Number',
                    prefixIcon: const Icon(Icons.numbers_outlined,color: AppColors.blackColor),
                    labelStyle: const TextStyle(fontSize: 20,color: AppColors.blackColor),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey)
                    ),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey)
                    ),
                  ),
                  obscureText: false,
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: const TextStyle(color: AppColors.blackColor,fontSize: 18),
                  controller: _productIMEINumberController,
                  decoration: InputDecoration(
                    labelText: 'IMEI Number',
                    prefixIcon: const Icon(Icons.numbers_outlined,color: AppColors.blackColor),
                    labelStyle: const TextStyle(fontSize: 20,color: AppColors.blackColor),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey)
                    ),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey)
                    ),
                  ),
                  obscureText: false,
                )
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_productNameController.text.isEmpty) {
                    // Show an error message or perform any action for invalid input
                    print('Product Name is required');
                    Get.snackbar('Product Name', 'Product name is required');
                    return;
                  }
                  // Validate Product Cost
                  if (_productCostController.text.isEmpty) {
                    // Show an error message or perform any action for invalid input
                    print('Product Cost is required');
                    Get.snackbar('Product Cost', 'Product cost is required');
                    return;
                  }
                  if (_productPurchaseDateController.text.isEmpty) {
                    // Show an error message or perform any action for invalid input
                    print('Product Purchase Date is required');
                    Get.snackbar('Product Purchase Date', 'Product purchase date is required');
                    return;
                  }
                  if (_productWarrantyValidTillController.text.isEmpty) {
                    // Show an error message or perform any action for invalid input
                    print('Product Warranty Valid Till is required');
                    Get.snackbar('Product Warranty Valid Till', 'Product warranty valid till is required');
                    return;
                  }
                  if (_productSerialNumberController.text.isEmpty) {
                    // Show an error message or perform any action for invalid input
                    print('Product Serial Number is required');
                    Get.snackbar('Product Serial Number', 'Product serial number valid till is required');
                    if (validateSerialNumber(_productSerialNumberController.text)) {
                      // Serial number is valid, you can perform further actions here
                      print('Serial Number is valid: ${_productSerialNumberController.text}');
                    } else {
                      // Serial number is invalid
                      print('Invalid Serial Number: ${_productSerialNumberController.text}');
                    }
                    return;
                  }
                  if (_productIMEINumberController.text.isEmpty) {
                    // Show an error message or perform any action for invalid input
                    print('Product IMEI Number is required');
                    Get.snackbar('Product IMEI Number', 'Product IMEI number is required');
                    return;
                  }
                },
                child: const Text('Validate'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validateSerialNumber(String serialNumber) {
    // Define a regular expression for the desired serial number pattern
    RegExp serialNumberRegExp = RegExp(r'^[A-Za-z]{2}\d{3}$');
    // Use the RegExp test method to check if the serial number matches the pattern
    return serialNumberRegExp.hasMatch(serialNumber);
  }
}
