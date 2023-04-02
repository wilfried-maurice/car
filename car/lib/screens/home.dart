import 'package:car/animation/delayed_animation.dart';
import 'package:car/model/design/design_system.dart';
import 'package:car/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 241, 243),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CONTINUER',
                    style: TextStyle(
                      color: DesignSystem.container,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Icon(
                      UniconsLine.arrow_circle_right,
                      color: DesignSystem.backgrnd1,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: DelayedAnimation(
                delay: 950,
                child: SizedBox(
                  height: 450,
                  width: 400,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(106, 96, 125, 139),
                          Color.fromARGB(255, 53, 60, 78),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(17),
                      ),
                    ),
                    child: Image.asset(
                      'assets/yaris_car.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bienvenue sur KIA-MOTORS ',
                    style: TextStyle(
                      color: DesignSystem.container,
                      letterSpacing: 0.7,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Book Car in Easy Step Book Car in Easy Step Book Car in Easy Step Book Car in Easy Step Book Car in Easy Step Book Car in Easy Step Book Car in Easy Step Book Car in Easy Step ',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      letterSpacing: 0.7,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25.0,
                    width: 25.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: DesignSystem.container,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      child: Icon(
                        Icons.local_activity,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  SizedBox(
                    height: 25.0,
                    width: 25.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: DesignSystem.container,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      child: Icon(
                        Icons.local_activity,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  SizedBox(
                    height: 25.0,
                    width: 25.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: DesignSystem.container,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      child: Icon(
                        Icons.local_activity,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  SizedBox(
                    height: 25.0,
                    width: 25.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: DesignSystem.container,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      child: Icon(
                        Icons.local_activity,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  SizedBox(
                    height: 25.0,
                    width: 25.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: DesignSystem.container2,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      child: Icon(
                        Icons.local_activity,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 160,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: DesignSystem.titleColor,
                      ),
                      child: Align(
                        child: Text(
                          'Connection',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: DesignSystem.container,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 160,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.orange,
                            Colors.orangeAccent,
                          ],
                        ),
                      ),
                      child: Align(
                        child: Text(
                          'Inscription',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: DesignSystem.titleColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}
