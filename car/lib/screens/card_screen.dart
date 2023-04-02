// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:car/animation/delayed_animation.dart';
import 'package:car/model/design/design_system.dart';
import 'package:car/share/components/components.dart';
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
  String? localisation;
  String? adress;
  int? viewCount;
  int? phoneNum;

  CardPage({
    this.carImage,
    this.carClass,
    this.carName,
    this.carPower,
    this.people,
    this.bags,
    this.carPrice,
    this.carRating,
    this.isRotated,
    this.localisation,
    this.adress,
    this.viewCount,
    this.phoneNum,
  });

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
      // backgroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 237, 241, 243),

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0), //appbar size
        child: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          leadingWidth: size.width * 0.15,
          centerTitle: true,
          // backgroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 237, 241, 243),
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
                        Colors.orange,
                        Colors.orangeAccent,
                      ],
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Icon(
                    UniconsLine.arrow_circle_left,
                    color: themeData.secondaryHeaderColor,
                    size: size.height * 0.025,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
          ),
          child: Stack(
            children: [
              ListView(
                children: [
                  widget.isRotated!
                      ? DelayedAnimation(
                          delay: 800,
                          child: Image.asset(
                            widget.carImage!,
                            height: size.width * 0.5,
                            width: size.width * 0.8,
                            fit: BoxFit.contain,
                          ),
                        )
                      : DelayedAnimation(
                          delay: 800,
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(pi),
                            child: Image.asset(
                              widget.carImage!,
                              height: size.width * 0.5,
                              width: size.width * 0.8,
                              fit: BoxFit.contain,
                            ),
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
                          fontSize: size.width * 0.05,
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
                            color: Colors.orange,
                            size: size.width * 0.04,
                          ),
                          SizedBox(width: 3),
                          Text(
                            widget.carRating!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orange,
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
                          fontSize: size.width * 0.04,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 110,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            '${widget.carPrice} \XAF',
                            style: TextStyle(
                              color: DesignSystem.titleColor,
                              fontSize: size.width * 0.04,
                              letterSpacing: 0.7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Text(
                      'Spesifications',
                      style: TextStyle(
                        color: DesignSystem.container,
                        letterSpacing: 0.7,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildStatCar(
                          UniconsLine.dashboard,
                          'Power',
                          '${widget.carPower} KM',
                          size,
                          themeData,
                        ),
                        buildStatCar(
                          UniconsLine.users_alt,
                          'Places',
                          '( ${widget.people} )',
                          size,
                          themeData,
                        ),
                        buildStatCar(
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
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildInfoCar(
                          UniconsLine.map_marker,
                          'Localisation',
                          '${widget.localisation} ',
                          size,
                          themeData,
                        ),
                        buildInfoCar(
                          UniconsLine.phone_times,
                          'Adresse',
                          ' ${widget.adress} ',
                          size,
                          themeData,
                        ),
                        buildInfoCar(
                          UniconsLine.message,
                          'Reserver',
                          ' ${widget.viewCount} ',
                          size,
                          themeData,
                        ),
                      ],
                    ),
                  ),
                  buildMostRented(size, themeData),
                ],
              ),
              // buildSelectButton(size),
            ],
          ),
        ),
      ),
      // ),
      // ),
    );
  }
}
