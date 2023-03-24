import 'package:car/model/design/design_system.dart';
import 'package:car/screens/card_screen.dart';
import 'package:car/share/build_car_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';
import 'dart:math';
import '../model/car_model.dart';
import '../screens/home_screen.dart';

// build custom button navigation bar item's
BottomNavigationBarItem buildCustomBottomNavItem(
        IconData icon, ThemeData themeData, Size size) =>
    BottomNavigationBarItem(
      icon: SizedBox(
        height: size.width * 0.12,
        width: size.width * 0.12,
        child: Container(
          decoration: BoxDecoration(
            color: themeData.primaryColor.withOpacity(0.05),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Icon(
            icon,
          ),
        ),
      ),
      label: "",
    );

// build custom button navigation bar
Widget buildCustomBottomNavBar(int currIndex, Size size, ThemeData themeData) =>
    BottomNavigationBar(
      iconSize: size.width * 0.06,
      elevation: 0,
      selectedLabelStyle: const TextStyle(fontSize: 0),
      unselectedLabelStyle: const TextStyle(fontSize: 0),
      currentIndex: currIndex,
      backgroundColor: const Color(0x00ffffff),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: themeData.brightness == Brightness.dark
          ? Colors.indigoAccent
          : Colors.black,
      unselectedItemColor: const Color(0xff3b22a1),
      onTap: (value) {
        if (value != currIndex) {
          if (value == 1) {
            Get.to(HomePage());
          }
          if (value == 2) {
            Get.to(BuildCarList(cars));
          } else {}
        }
      },
      items: [
        buildCustomBottomNavItem(UniconsLine.home_alt, themeData, size),
        buildCustomBottomNavItem(UniconsLine.user, themeData, size),
        buildCustomBottomNavItem(UniconsLine.list_ui_alt, themeData, size),
        // buildCustomBottomNavItem(UniconsLine.apps, themeData, size),
      ],
    );

// build statbar in card screen
Padding buildStat(IconData icon, String title, String desc, Size size,
        ThemeData themeData) =>
    Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.015),
      child: SizedBox(
        height: size.width * 0.25,
        width: size.width * 0.26,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 230, 225, 225),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: size.width * 0.03,
              left: size.width * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: DesignSystem.buttonColor,
                  size: size.width * 0.06,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.width * 0.02,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: DesignSystem.container,
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  desc,
                  style: TextStyle(
                    color: DesignSystem.container,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

// select button in car screen
ElevatedButton buildSelectButton(Size size) =>

// Align(
//       alignment: Alignment.bottomCenter,
//       child: Padding(
//           padding: EdgeInsets.only(
//             bottom: size.height * 0.01,
//           ),
//           child:
    ElevatedButton(
      onPressed: () {},
      child: Text(
        'Louer',
        style: TextStyle(
          color: Colors.blueGrey,
        ),
      ),
    );

// SizedBox(
//   height: size.height * 0.07,
//   width: size.width,
//   child: InkWell(
//     child: Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: DesignSystem.container,
//       ),
//       child: Align(
//         child: Text(
//           'Louer',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: size.height * 0.020,
//             fontWeight: FontWeight.bold,
//             color: DesignSystem.titleColor,
//           ),
//         ),
//       ),
//     ),
//   ),
// ),
// ),
// );

// text form field in home screen
OutlineInputBorder textFieldBorder() => OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.5),
        width: 1.0,
      ),
    );

// build category name & view all
Row buildCategory(String text, size, ThemeData themeData) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.width * 0.05,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: DesignSystem.container,
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.037,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.03,
            right: size.width * 0.05,
          ),
          child: Text(
            'Voir Tout',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: DesignSystem.buttonColor,
              fontSize: size.width * 0.03,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );

// build item for top brands category (Hyndai, golf, ...)
Padding buildBrandLogo(Widget image, Size size, ThemeData themeData) => Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.03,
      ),
      child: SizedBox(
        height: size.width * 0.15,
        width: size.width * 0.15,
        child: InkWell(
          onTap: () {
            Get.to(CardPage());
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(235, 255, 255, 255),
                  Color.fromARGB(255, 169, 162, 172),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color.fromARGB(209, 255, 255, 255),
              ),
            ),
            // decoration: BoxDecoration(
            //   color: Color.fromARGB(209, 255, 255, 255),
            //   borderRadius: const BorderRadius.all(Radius.circular(20)),
            // ),
            child: Center(
              child: image,
            ),
          ),
        ),
      ),
    );

// build top brand card
Column buildTopBrands(Size size, ThemeData themeData) => Column(
      children: [
        buildCategory('Top Marques', size, themeData),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.015),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBrandLogo(
                Image.asset(
                  'assets/hyundai_logo.png',
                  height: size.width * 0.1,
                  width: size.width * 0.10,
                  fit: BoxFit.fill,
                ),
                size,
                themeData,
              ),
              buildBrandLogo(
                Image.asset(
                  'assets/volkswagen_logo.png',
                  height: size.width * 0.10,
                  width: size.width * 0.10,
                  fit: BoxFit.fill,
                ),
                size,
                themeData,
              ),
              buildBrandLogo(
                Image.asset(
                  'assets/toyota_logo.png',
                  height: size.width * 0.06,
                  width: size.width * 0.10,
                  fit: BoxFit.fill,
                ),
                size,
                themeData,
              ),
              buildBrandLogo(
                Image.asset(
                  'assets/bmw_logo.png',
                  height: size.width * 0.10,
                  width: size.width * 0.10,
                  fit: BoxFit.fill,
                ),
                size,
                themeData,
              ),
            ],
          ),
        ),
      ],
    );

// build most rented item
Padding buildMostRantedCard(int i, Size size, ThemeData themeData) {
  return Padding(
    padding: EdgeInsets.only(
      right: size.width * 0.03,
    ),
    child: Center(
      child: SizedBox(
        height: size.width * 0.55,
        width: size.width * 0.8,
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(172, 255, 255, 255),
                Color.fromARGB(209, 255, 255, 255),
              ],
            ),
            // color: Color.fromARGB(209, 255, 255, 255),
            borderRadius: const BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.02,
            ),
            child: InkWell(
              onTap: () {
                Get.to(CardPage(
                  carImage: cars[i]['carImage'],
                  carClass: cars[i]['carClass'],
                  carName: cars[i]['carName'],
                  carPower: cars[i]['carPower'],
                  people: cars[i]['people'],
                  bags: cars[i]['bags'],
                  carPrice: cars[i]['carPrice'],
                  carRating: cars[i]['carRating'],
                  isRotated: cars[i]['isRotated'],
                ));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: cars[i]['isRotated']
                          ? Image.asset(
                              cars[i]['carImage'],
                              height: size.width * 0.25,
                              width: size.width * 0.5,
                              fit: BoxFit.contain,
                            )
                          : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(pi),
                              child: Image.asset(
                                cars[i]['carImage'],
                                height: size.width * 0.25,
                                width: size.width * 0.5,
                                fit: BoxFit.contain,
                              ),
                            ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                    ),
                    child: Text(
                      cars[i]['carClass'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: DesignSystem.container,
                        fontSize: size.width * 0.04,
                        letterSpacing: 0.7,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    cars[i]['carName'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: size.width * 0.03,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '${cars[i]['carPrice']} \XA',
                        style: TextStyle(
                          color: DesignSystem.buttonColor,
                          letterSpacing: 0.7,
                          fontSize: size.width * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '/ Jour',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: size.width * 0.03,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          right: size.width * 0.025,
                        ),
                        child: const Icon(
                          UniconsLine.favorite,
                          color: DesignSystem.buttonColor,
                        ),
                        // SizedBox(
                        //   height: size.width * 0.1,
                        //   width: size.width * 0.1,
                        //   child: Container(
                        //     decoration: const BoxDecoration(
                        //       color: Color(0xff3b22a1),
                        //       borderRadius: BorderRadius.all(
                        //         Radius.circular(
                        //           10,
                        //         ),
                        //       ),
                        //     ),
                        //     child:
                        //     const Icon(
                        //       UniconsLine.favorite,
                        //       color: Colors.white,
                        //     ),
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

// build most rented card
Widget buildMostRented(Size size, ThemeData themeData) => Column(
      children: [
        buildCategory('Top Voitures', size, themeData),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.015,
            left: size.width * 0.03,
            right: size.width * 0.03,
          ),
          child: SizedBox(
            height: size.width * 0.55,
            width: cars.length * size.width * 0.5 * 1.03,
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: cars.length,
              itemBuilder: (context, i) {
                return buildMostRantedCard(i, size, themeData);
              },
            ),
          ),
        ),
      ],
    );
