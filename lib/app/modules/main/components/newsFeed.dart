import 'package:flutter/material.dart';
import 'package:olive_pay/app/data/constantData.dart';

class NewFeeds extends StatelessWidget {
  final String? heading;
  final String? content;

  const NewFeeds({super.key, this.heading, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading!,
          style: interFont.copyWith(
            color: DocColor.primary,
            fontSize: res.setSp(17),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          content!,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: interFont.copyWith(
            color: DocColor.secondary,
            fontSize: res.setSp(15),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
