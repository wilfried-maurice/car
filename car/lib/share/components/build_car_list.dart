import 'dart:math';

import 'package:car/animation/delayed_animation.dart';
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                    label: Text('Rechercher'),
                    labelStyle: TextStyle(
                      letterSpacing: 0.7,
                      fontSize: 19,
                      color: DesignSystem.container,
                    ),
                    prefixIcon: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: Icon(
                        UniconsLine.search_alt,
                      ),
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
                  child: DelayedAnimation(
                    delay: 650,
                    child: SizedBox(
                      height: 280,
                      width: 200,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.black,
                            ],
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15,
                                  ),
                                  child: Text(
                                    cars[index]['carName'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: DesignSystem.titleColor,
                                      fontSize: 17,
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: Text(
                                cars[index]['carClass'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: DesignSystem.titleColor,
                                  fontSize: 15,
                                  letterSpacing: 0.7,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Text(
                                    '${cars[index]['carPrice']} \XA',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      letterSpacing: 0.7,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '/ Jour',
                                    style: TextStyle(
                                      color: DesignSystem.titleColor,
                                      fontSize: 12,
                                      letterSpacing: 0.7,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 15,
                                    ),
                                    child: SizedBox(
                                      height: 26.1,
                                      width: 26.1,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: const Icon(
                                          UniconsLine.corner_down_left,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                          ],
                        ),
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
