import 'package:flutter/material.dart';

import '../../../data/constantData.dart';

class AmountsView extends StatelessWidget {
  const AmountsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '₦ 200,000',
          style: interFontB.copyWith(
            fontSize: res.setSp(40),
            fontWeight: FontWeight.w400,
          ),
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(
            Icons.visibility,
          ),
        ),
      ],
    );
  }
}
