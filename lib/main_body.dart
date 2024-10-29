import 'package:figma_design/bottom_bar.dart';
import 'package:figma_design/payments.dart';
import 'package:figma_design/prices.dart';
import 'package:figma_design/recent_transactions.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 6,
          ),
          CurrentPrices(),
          SizedBox(
            height: 10,
          ),
          Payments(),
          SizedBox(height: 10,),
          RecentTransactions(),
          SizedBox(height: 60,),
          BottomBar(),
        ],
      ),
    );
  }
}
