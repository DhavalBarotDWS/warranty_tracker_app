// bottom with fab in middle

// return Scaffold(
//   backgroundColor: Colors.blueAccent,
//   floatingActionButton: Padding(
//     padding: const EdgeInsets.only(top: 20),
//     child: SizedBox(
//       height: 70,
//       width: 70,
//       child: FloatingActionButton(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         onPressed: () {},
//         child: Container(
//           height: 75,
//           width: 75,
//           decoration: BoxDecoration(
//               border: Border.all(color: whiteColor, width: 4),
//               shape: BoxShape.circle,
//               color: Colors.red),
//           child: const Icon(Icons.add, size: 40),
//         ),
//       ),
//     ),
//   ),
//   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//   bottomNavigationBar: Container(
//     height: 110.0,
//     color: whiteColor,
//     padding: const EdgeInsets.only(top: 20.0),
//     child: Theme(
//       data: Theme.of(context).copyWith(
//           // sets the background color of the `BottomNavigationBar`
//           canvasColor: whiteColor,
//           // sets the active color of the `BottomNavigationBar` if `Brightness` is light
//           primaryColor: Colors.red,
//           textTheme: Theme.of(context).textTheme.copyWith(
//               bodySmall: const TextStyle(
//                   color: Colors
//                       .grey)), bottomAppBarTheme: const BottomAppBarTheme(color: Colors.green)), // sets the inactive color of the `BottomNavigationBar`
//       child: BottomNavigationBar(
//               type: BottomNavigationBarType.fixed,
//               backgroundColor: backgroundColor,
//               selectedItemColor: buttonColor,
//               unselectedItemColor: whiteColor,
//               currentIndex: _currentIndex,
//               onTap: onTabTapped,
//           items: const [
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//                 backgroundColor: blackColor),
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.bookmark_border,
//                   color: Colors.transparent,
//                 ),
//                 label: 'Center'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.more_horiz), label: 'More'),
//           ]),
//     ),
//   ),
//   body: pages[_currentIndex],
// );

//for dark mode switch

// bool _isDarkMode = false;
// appBar: AppBar(
//   title: const Text("a"),
//   actions: [
//     IconButton(onPressed: (){
//       setState(() {
//         _isDarkMode = !_isDarkMode;
//         Get.isDarkMode ? Get.changeTheme(ThemeData.light()) : Get.changeTheme(ThemeData.dark());
//       });
//     }, icon: const Icon(Icons.lightbulb_outline))
//   ],
// ),

// for dropdown for language

// DropdownButtonFormField2<String>(
//   isExpanded: true,
//   decoration: InputDecoration(
//     // Add Horizontal padding using menuItemStyleData.padding so it matches
//     // the menu padding when button's width is not specified.
//     contentPadding: const EdgeInsets.symmetric(vertical: 16),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(15),
//     ),
//     // Add more decoration..
//   ),
//   hint: const Text(
//     'Select Your Language',
//     style: TextStyle(fontSize: 14),
//   ),
//   items: languages
//       .map((item) => DropdownMenuItem<String>(
//     value: item,
//     child: Text(
//       item,
//       style: const TextStyle(
//         fontSize: 14,
//       ),
//     ),
//   ))
//       .toList(),
//   validator: (value) {
//     if (value == null) {
//       return 'Please select gender.';
//     }
//     return null;
//   },
//   onChanged: (value) {
//     //Do something when selected item is changed.
//   },
//   onSaved: (value) {
//     selectedValue = value.toString();
//   },
//   buttonStyleData: const ButtonStyleData(
//     padding: EdgeInsets.only(right: 8),
//   ),
//   iconStyleData: const IconStyleData(
//     icon: Icon(
//       Icons.arrow_drop_down,
//       color: blackColor45,
//     ),
//     iconSize: 24,
//   ),
//   dropdownStyleData: DropdownStyleData(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(15),
//     ),
//   ),
//   menuItemStyleData: const MenuItemStyleData(
//     padding: EdgeInsets.symmetric(horizontal: 16),
//   ),
// ),
/////////////////////////////////////////////////////////////////
// DropdownButtonHideUnderline(
//   child: DropdownButton2<String>(
//     isExpanded: true,
//     hint: Text(
//       'Select Item',
//       style: TextStyle(
//         fontSize: 14,
//         color: Theme.of(context).hintColor,
//       ),
//     ),
//     items: items
//         .map((String item) => DropdownMenuItem<String>(
//               value: item,
//               child: Text(
//                 item,
//                 style: const TextStyle(
//                   fontSize: 14,
//                 ),
//               ),
//             ))
//         .toList(),
//     value: selectedValue,
//     onChanged: (String? value) {
//       setState(() {
//         selectedValue = value;
//       });
//     },
//     buttonStyleData: const ButtonStyleData(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       height: 40,
//       width: 140,
//     ),
//     menuItemStyleData: const MenuItemStyleData(
//       height: 40,
//     ),
//   ),
// ),
//////////////////////////////////////////////////////////////////
// Container(
//   height: 50,
//   width: size.width,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),
//       shape: BoxShape.rectangle,
//       gradient: const LinearGradient(
//         begin: Alignment.centerRight,
//         end: Alignment.centerLeft,
//         colors: <Color>[whiteColor, primaryColor],
//       )),
//   child: const Row(
//     children: [
//       Expanded(
//           flex: 1,
//           child: Icon(
//             Icons.language,
//             color: whiteColor,
//             size: 30,
//           )),
//       Expanded(
//           flex: 3,
//           child: Text(
//             'Language',
//             style: TextStyle(
//                 color: whiteColor,
//                 fontSize: 20,
//                 fontWeight: FontWeight.w700),
//           )),
//     ],
//   ),
// ),

/////////////
// PageViewModel(
//   title: "",
//   // body: "Purchase and Forget ... \n Don't worry we are here to remind you about your warranties...",
//   image: _buildImage('welcome_1.jpg'),
//   bodyWidget: Column(
//     children: [
//       Image.asset(
//         'assets/icons/logo.png',
//         height: 200,
//         width: 200,
//       ),
//       const Text(
//         "Purchase and Forget ... \n Don't worry we are here to remind you about your warranties...",
//         textAlign: TextAlign.center,
//         style: TextStyle(color: blackColor, fontSize: 20),
//       )
//     ],
//   ),
//   decoration: pageDecoration,
// ),