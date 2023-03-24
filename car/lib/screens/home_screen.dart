import 'package:car/model/design/design_system.dart';
import 'package:car/share/components.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(255, 237, 241, 243),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        // shadowColor: Colors.transparent,
        backgroundColor: Color.fromARGB(255, 237, 241, 243),
        leading: Padding(
          padding: EdgeInsets.only(left: size.width * 0.05),
          child: SizedBox(
            child: Icon(
              UniconsLine.bars,
              color: DesignSystem.backgrnd1,
              size: size.height * 0.025,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leadingWidth: size.width * 0.15,
        title: Text(
          'KIA-MOTORS'.toUpperCase(),
          style: TextStyle(
            color: DesignSystem.container,
            fontWeight: FontWeight.w700,
            fontSize: 22.0,
          ),
          // themeData.brightness == Brightness.dark
          //     ? "${lightText}"
          //     : "${darkText}",
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: size.width * 0.05,
            ),
            // child: SizedBox(
            //   height: size.width * 0.1,
            //   width: size.width * 0.1,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: themeData.primaryColorDark.withOpacity(0.03),
            //       borderRadius: const BorderRadius.all(
            //         Radius.circular(10),
            //       ),
            //     ),
            //     // child: Switch.adaptive(value: value, onChanged: onChanged),
            //   ),
            // ),
          ),
        ],
      ),
      bottomNavigationBar: buildCustomBottomNavBar(1, size, themeData),
      body: SafeArea(
        child: ListView(
          children: [
            buildMostRented(size, themeData),
            // text form field
            // Padding(
            //   padding: EdgeInsets.only(
            //     top: size.height * 0.04,
            //     left: size.width * 0.05,
            //     right: size.width * 0.05,
            //   ),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(12),
            //       gradient: const LinearGradient(
            //         colors: [
            //           DesignSystem.titleColor,
            //           DesignSystem.container2,
            //         ],
            //       ),
            //     ),
            //     child: Column(
            //       children: [
            //         Padding(
            //           padding: EdgeInsets.only(
            //             top: size.height * 0.04,
            //           ),
            //           child: Align(
            //             child: Text(
            //               'Trouver un véhicule en 2 cliques ',
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: DesignSystem.container2,
            //                 fontSize: size.width * 0.05,
            //                 letterSpacing: 0.5,
            //                 fontWeight: FontWeight.w600,
            //               ),
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(
            //             top: size.height * 0.01,
            //           ),
            //           child: Align(
            //             child: Text(
            //               'Entrer directement en contact avec son proprietaire',
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 color: DesignSystem.container2,
            //                 letterSpacing: 0.7,
            //                 fontSize: size.width * 0.035,
            //               ),
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(
            //             top: size.height * 0.03,
            //             left: size.width * 0.04,
            //             bottom: size.height * 0.025,
            //           ),
            //           child: Row(
            //             children: [
            //               SizedBox(
            //                 width: size.width * 0.80,
            //                 height: size.height * 0.06,
            //                 child: TextField(
            //                   //searchbar
            //                   style: GoogleFonts.poppins(
            //                     color: DesignSystem.iconColor,
            //                   ),
            //                   textInputAction: TextInputAction.next,
            //                   decoration: InputDecoration(
            //                     contentPadding: EdgeInsets.only(
            //                       top: size.height * 0.01,
            //                       left: size.width * 0.04,
            //                       right: size.width * 0.04,
            //                     ),
            //                     enabledBorder: textFieldBorder(),
            //                     focusedBorder: textFieldBorder(),
            //                     border: textFieldBorder(),
            //                     hintStyle: TextStyle(
            //                       color: DesignSystem.container2,
            //                       letterSpacing: 0.6,
            //                       fontSize: 14,
            //                     ),
            //                     hintText: 'Rechercher un véhicule...',
            //                   ),
            //                 ),
            //               ),
            //               // Padding(
            //               //   padding: EdgeInsets.only(
            //               //     left: size.width * 0.025,
            //               //   ),
            //               //   child: Container(
            //               //     height: size.height * 0.06,
            //               //     width: size.width * 0.14,
            //               //     decoration: const BoxDecoration(
            //               //       borderRadius: BorderRadius.all(
            //               //         Radius.circular(10),
            //               //       ),
            //               //       color: Color(0xff3b22a1), //filters bg color
            //               //     ),
            //               //     child: Icon(
            //               //       UniconsLine.sliders_v,
            //               //       color: Colors.white,
            //               //       size: size.height * 0.032,
            //               //     ),
            //               //   ),
            //               // ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // top brands widget
            buildTopBrands(size, themeData),
            // most rented widget
            buildMostRented(size, themeData),
            buildMostRented(size, themeData),
          ],
        ),
      ),
    );
  }
}
