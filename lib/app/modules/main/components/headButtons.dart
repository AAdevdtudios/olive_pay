import 'package:flutter/material.dart';

import '../../../components/PrimaryButton.dart';
import '../../../data/constantData.dart';

class HeadButtons extends StatelessWidget {
  const HeadButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 10,
          child: PrimaryButton(
            onPressed: () => {},
            name: "Deposits",
            icon: Icons.arrow_downward_outlined,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 10,
          child: PrimaryButton(
            onPressed: () => {},
            name: "Deposits",
            icon: Icons.arrow_upward,
            backgroundColor: DocColor.ash,
            foregroundColor: DocColor.black,
          ),
        ),
      ],
    );
  }
}
