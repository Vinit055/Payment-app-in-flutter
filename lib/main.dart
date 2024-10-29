import 'package:figma_design/main_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/icons/Notifications icon.svg';
    final Widget svgIcon = SvgPicture.asset(
      assetName,
      semanticsLabel: 'Acme Logo',
      height: 48, // Adjust height as needed
      width: 48, // Adjust width as needed
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                'Hi Clarencce,',
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              )),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: svgIcon,
            ),
          ],
        ),
        body: const MainBody(),
      ),
    );
  }
}
