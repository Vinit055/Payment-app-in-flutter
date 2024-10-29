import 'package:flutter/material.dart';

class CardData {
  final String title;
  final IconData icon;
  final String value;
  final List<Color> gradientColors;

  const CardData({
    required this.title,
    required this.icon,
    required this.value,
    required this.gradientColors,
  });
}

class Payments extends StatelessWidget {
  const Payments({super.key});
  final List<CardData> _cards = const [
    CardData(
      title: 'Pay money',
      icon: Icons.trending_up,
      value: 'To wallet, bank or mobile number',
      gradientColors: [
        Color.fromRGBO(117, 105, 222, 0.25),
        Color.fromRGBO(46, 31, 175, 0.25)
      ],
    ),
    CardData(
      title: 'Request money',
      icon: Icons.trending_down,
      value: 'Request money from Cowry Loans',
      gradientColors: [
        Color.fromRGBO(177, 222, 82, 0.25),
        Color.fromRGBO(129, 171, 39, 0.25)
      ],
    ),
    CardData(
      title: 'Pay bill',
      icon: Icons.calendar_today,
      value: 'Zero transaction fees when you pay',
      gradientColors: [
        Color.fromRGBO(217, 234, 218, 0.25),
        Color.fromRGBO(193, 221, 195, 0.25)
      ],
    ),
    CardData(
      title: 'Buy airtime',
      icon: Icons.phone_android_outlined,
      value: 'Top-Up or Send airtime accross Countries',
      gradientColors: [
        Color.fromRGBO(243, 196, 31, 0.25),
        Color.fromRGBO(248, 140, 41, 0.25)
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 5),
          child: const Text(
            'What do you want to do today?',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          // childAspectRatio: 184 / 181, // Width/Height ratio
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: _cards.map((CardData) {
            return Card(
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: CardData.gradientColors,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius:
                      BorderRadius.circular(12), // Match Card's default radius
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        CardData.icon,
                        size: 32,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        maxLines: 1,
                        CardData.title,
                        style: const TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        CardData.value,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
