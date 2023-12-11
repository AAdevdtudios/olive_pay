import 'package:flutter/material.dart';

import '../../../../data/constantData.dart';
import '../../components/transaction_history.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction History',
                  style: interFont.copyWith(
                    fontSize: res.setSp(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(
                10,
                (index) => const TransactionHistory(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
