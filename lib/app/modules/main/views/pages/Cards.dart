import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:olive_pay/app/data/constantData.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: res.setHeight(20),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DottedBorder(
            color: Colors.grey,
            child: SizedBox(
              width: double.infinity,
              height: res.setHeight(60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  splashFactory: NoSplash.splashFactory,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () => {},
                child: const Text('Add Card'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
