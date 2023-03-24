// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:car/model/design/design_system.dart';
import 'package:car/share/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class CardPage extends StatefulWidget {
  String? carImage;
  String? carClass;
  String? carName;
  int? carPower;
  String? people;
  String? bags;
  int? carPrice;
  String? carRating;
  bool? isRotated;

  CardPage(
      {this.carImage,
      this.carClass,
      this.carName,
      this.carPower,
      this.people,
      this.bags,
      this.carPrice,
      this.carRating,
      this.isRotated});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0), //appbar size
        child: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          leadingWidth: size.width * 0.15,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
            ),
            child: SizedBox(
              height: size.width * 0.1,
              width: size.width * 0.1,
              child: InkWell(
                onTap: () {
                  Get.back(); //go back to home page
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(106, 96, 125, 139),
                        Color.fromARGB(255, 94, 119, 179),
                      ],
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Icon(
                    UniconsLine.multiply,
                    color: themeData.secondaryHeaderColor,
                    size: size.height * 0.025,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        // child: Container(
        //   height: size.height,
        //   width: size.height,
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //   ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            child: Stack(
              children: [
                ListView(
                  children: [
                    widget.isRotated!
                        ? Image.asset(
                            widget.carImage!,
                            height: size.width * 0.5,
                            width: size.width * 0.8,
                            fit: BoxFit.contain,
                          )
                        : Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(pi),
                            child: Image.asset(
                              widget.carImage!,
                              height: size.width * 0.5,
                              width: size.width * 0.8,
                              fit: BoxFit.contain,
                            ),
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.carName!,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: DesignSystem.container,
                            letterSpacing: 0.7,
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[800],
                              size: size.width * 0.04,
                            ),
                            SizedBox(width: 3),
                            Text(
                              widget.carRating!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.yellow[800],
                                fontSize: size.width * 0.03,
                                letterSpacing: 0.7,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          widget.carClass!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: DesignSystem.container2,
                            fontSize: size.width * 0.05,
                            letterSpacing: 0.7,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '${widget.carPrice} \XA',
                          style: TextStyle(
                            color: DesignSystem.buttonColor,
                            fontSize: size.width * 0.04,
                            letterSpacing: 0.7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/Jour',
                          style: TextStyle(
                            color: DesignSystem.container,
                            letterSpacing: 0.7,
                            fontSize: size.width * 0.025,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildStat(
                            UniconsLine.dashboard,
                            '${widget.carPower} KM',
                            'Power',
                            size,
                            themeData,
                          ),
                          buildStat(
                            UniconsLine.users_alt,
                            'Places',
                            '( ${widget.people} )',
                            size,
                            themeData,
                          ),
                          buildStat(
                            UniconsLine.briefcase,
                            'Bagages',
                            '( ${widget.bags} )',
                            size,
                            themeData,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.03,
                      ),
                      child: Text(
                        'Details',
                        style: TextStyle(
                          color: DesignSystem.container,
                          letterSpacing: 0.7,
                          fontSize: size.width * 0.043,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05,
                                vertical: size.height * 0.015,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    UniconsLine.map_marker,
                                    color: DesignSystem.buttonColor,
                                    size: size.height * 0.03,
                                  ),
                                  Text(
                                    'Localisation',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: DesignSystem.buttonColor,
                                      letterSpacing: 0.7,
                                      fontSize: size.width * 0.03,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Rond Point Ngeng Ayong',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: DesignSystem.container,
                                      fontSize: size.width * 0.04,
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Pres de la Pharmacie ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: DesignSystem.container2,
                                      fontSize: size.width * 0.033,
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05,
                                vertical: size.height * 0.015,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    UniconsLine.google,
                                    color: DesignSystem.buttonColor,
                                    size: size.height * 0.03,
                                  ),
                                  Text(
                                    'Reserver',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: DesignSystem.buttonColor,
                                      letterSpacing: 0.7,
                                      fontSize: size.width * 0.03,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Adresse Mail',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: DesignSystem.container,
                                      letterSpacing: 0.7,
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Reserver par mail  ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: DesignSystem.container2,
                                      fontSize: size.width * 0.033,
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05,
                                vertical: size.height * 0.015,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    UniconsLine.whatsapp_alt,
                                    color: DesignSystem.buttonColor,
                                    size: size.height * 0.03,
                                  ),
                                  Text(
                                    'Appeler',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: DesignSystem.buttonColor,
                                      letterSpacing: 0.7,
                                      fontSize: size.width * 0.03,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Disponible 24/24',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: DesignSystem.container,
                                      fontSize: size.width * 0.04,
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Whatsapp +241 66174502 ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: DesignSystem.container2,
                                      fontSize: size.width * 0.033,
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                // buildSelectButton(size),
              ],
            ),
          ),
        ),
        // ),
      ),
    );
  }
}
