import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../data/constantData.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    child: Icon(FontAwesome.a),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Airtime (MTN)',
                        style: interFont.copyWith(
                          fontSize: res.setSp(17),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Sept-09-2023',
                        style: interFont.copyWith(
                          fontSize: res.setSp(17),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '₦ -2,000',
                    style: interFont.copyWith(
                      fontSize: res.setSp(17),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    '14:15',
                    style: interFont.copyWith(
                      fontSize: res.setSp(17),
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: Colors.purple,
              thickness: .5,
            ),
          ),
        ],
      ),
    );
  }
}
