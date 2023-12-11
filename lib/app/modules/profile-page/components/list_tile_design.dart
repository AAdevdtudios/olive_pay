import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../data/constantData.dart';

class ListTileDesign extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function()? onTap;
  final IconData? icon;

  const ListTileDesign({
    super.key,
    this.title = 'Confirmation Method',
    this.subTitle = 'Transaction pin',
    this.onTap,
    this.icon = LineAwesome.shield_alt_solid,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
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
                        title,
                        style: interFontB.copyWith(
                          fontSize: res.setSp(20),
                        ),
                      ),
                      subTitle == ''
                          ? const SizedBox()
                          : Text(
                              subTitle,
                              style: interFont.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: res.setSp(20),
                              ),
                            ),
                    ],
                  ),
                ],
              ),
              Icon(
                FontAwesome.chevron_right,
                color: DocColor.primary,
                size: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
