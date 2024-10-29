import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget addIcon = SvgPicture.asset(
      'assets/icons/add_icon.svg',
      semanticsLabel: 'Acme Logo',
      height: 60, // Adjust height as needed
      width: 60, // Adjust width as needed
    );
    final Widget imageIcon = SvgPicture.asset(
      'assets/icons/image_2.svg',
      semanticsLabel: 'Acme Logo',
      height: 63, // Adjust height as needed
      width: 61, // Adjust width as needed
    );

    return Container(
      margin: const EdgeInsets.only(left: 5),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Recent transactions',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              addIcon,
              const SizedBox(
                width: 5,
              ),
              imageIcon,
            ],
          ),
        ],
      ),
    );
  }
}
