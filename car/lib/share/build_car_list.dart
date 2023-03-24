import 'dart:math';

import 'package:car/model/design/design_system.dart';
import 'package:flutter/material.dart';

import 'package:unicons/unicons.dart';

class BuildCarList extends StatelessWidget {
  BuildCarList(this.cars, {Key? key}) : super(key: key);

  final List<Map> cars;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            UniconsLine.user_circle,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              UniconsLine.search_alt,
            ),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 237, 241, 243),
      ),
      extendBody: true,
      backgroundColor: Color.fromARGB(255, 237, 241, 243),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Color.fromARGB(255, 250, 249, 249),
                ),
              ),
              width: 350,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    letterSpacing: 0.5,
                    color: Color(0xFF7E7E7E),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                  // labelText: 'Remise',
                  hintText: 'Search here',
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 10.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 235, 235, 235),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(244, 187, 182, 182),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(3),
              itemCount: cars.length,
              itemBuilder: (BuildContext context, int index) {
                // cars = cars[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: SizedBox(
                    height: 280,
                    width: 200,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(172, 255, 255, 255),
                            Color.fromARGB(209, 255, 255, 255),
                          ],
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: cars[index]['isRotated']
                                ? Image.asset(
                                    cars[index]['carImage'],
                                    height: 200,
                                    width: 200,
                                    fit: BoxFit.contain,
                                  )
                                : Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationY(pi),
                                    child: Image.asset(
                                      cars[index]['carImage'],
                                      height: 200,
                                      width: 200,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              cars[index]['carClass'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: DesignSystem.container,
                                fontSize: 16,
                                letterSpacing: 0.7,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              cars[index]['carName'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 14,
                                letterSpacing: 0.7,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '${cars[index]['carPrice']} \XA',
                                  style: TextStyle(
                                    color: DesignSystem.buttonColor,
                                    letterSpacing: 0.7,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '/ Jour',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12,
                                    letterSpacing: 0.7,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 15,
                                  ),
                                  child: const Icon(
                                    UniconsLine.favorite,
                                    size: 25,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
