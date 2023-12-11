import 'package:flutter/material.dart';

import '../../../data/constantData.dart';
import 'newsFeed.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: DocColor.tertiary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent note',
              style: interFont.copyWith(
                color: DocColor.primary,
                fontSize: res.setSp(15),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: res.setHeight(2),
            ),
            SizedBox(
              width: double.infinity,
              height: res.setHeight(70),
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: const [
                  NewFeeds(
                    heading: "Special Week",
                    content:
                        "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab omnis nam perspiciatis dolorum alias sapiente illo ipsam officia et quibusdam?",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: res.setHeight(2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: res.setHeight(15),
                      width: res.setWidth(15),
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: DocColor.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      height: res.setHeight(15),
                      width: res.setWidth(15),
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: DocColor.secondary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      height: res.setHeight(15),
                      width: res.setWidth(15),
                      decoration: BoxDecoration(
                        color: DocColor.secondary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.chevron_left_sharp,
                        color: Colors.purple,
                      ),
                    ),
                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.purple,
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: const Text('Show more'),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
