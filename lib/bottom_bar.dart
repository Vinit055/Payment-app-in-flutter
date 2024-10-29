import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a list of icons, colors, and labels for each container
    final List<Map<String, dynamic>> items = [
      {
        "icon": Icons.window_rounded,
        "color": const Color.fromRGBO(78, 64, 196, 1),
        "label": "Dashboard",
      },
      {
        "icon": Icons.swap_horiz,
        "color": const Color.fromRGBO(200, 225, 202, 1),
        "label": "Transfer",
      },
      {
        "icon": Icons.account_balance_wallet_outlined,
        "color": const Color.fromRGBO(35, 31, 29, 1), // Corrected RGB values
        "label": "Pay",
      },
      {
        "icon": Icons.phone_iphone,
        "color": const Color.fromRGBO(172, 222, 82, 1),
        "label": "Top Up",
      },
      {
        "icon": Icons.person_outline_rounded,
        "color": const Color.fromRGBO(243, 196, 31, 1),
        "label": "Profile",
      },
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items.map((item) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(4),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: item["color"] as Color,
              ),
              child: Icon(
                item["icon"] as IconData,
                color: Colors.white,
                size: 28,
                semanticLabel: item["label"] as String?,
              ),
            ),
            //const SizedBox(height: 0),
            Text(
              item["label"] as String,
              style: const TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500),
            ),
          ],
        );
      }).toList(),
    );
  }
}
