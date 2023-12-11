import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../data/constantData.dart';

class SwitchTileDesign extends StatelessWidget {
  final Function(bool) onTap;
  final String? title;
  final String? subtitle;
  final bool value;

  const SwitchTileDesign({
    super.key,
    required this.onTap,
    this.title = "Use Finngerprint ID",
    this.subtitle = "To unlock and make transactions",
    this.value = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(!value),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesome.fingerprint,
                    size: 20,
                    color: DocColor.primary,
                  ),
                  SizedBox(
                    width: res.setWidth(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: interFontB.copyWith(
                          fontSize: res.setSp(20),
                        ),
                      ),
                      Text(
                        subtitle!,
                        style: interFont.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: res.setSp(20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Switch(
                value: value,
                onChanged: (val) => onTap(val),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
