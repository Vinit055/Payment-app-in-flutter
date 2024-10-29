import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentPrices extends StatelessWidget {
  const CurrentPrices({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget franceIcon = SvgPicture.asset(
      'assets/icons/France_flag.svg',
      semanticsLabel: 'Acme Logo',
      height: 24, // Adjust height as needed
      width: 24, // Adjust width as needed
    );
    final Widget downIcon = SvgPicture.asset(
      'assets/icons/down_arrow.svg',
      semanticsLabel: 'Acme Logo',
      height: 24, // Adjust height as needed
      width: 24, // Adjust width as needed
    );
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Text(
            '5,600.00',
            style: TextStyle(
              color: Color.fromRGBO(52, 48, 49, 1),
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w800,
              fontSize: 48,
            ),
          ),
          Row(
            children: [
              franceIcon,
              const SizedBox(
                width: 7,
              ),
              const Text(
                'FRN',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              downIcon
            ],
          )
        ],
      );
  }
}