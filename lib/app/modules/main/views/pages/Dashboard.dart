import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:olive_pay/app/modules/main/components/transaction_history.dart';
import 'package:olive_pay/app/modules/main/controllers/dashboard_controller.dart';

import '../../../../data/constantData.dart';
import '../../components/amountView.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DashboardController());
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available balance',
              style: interFont.copyWith(
                fontSize: res.setSp(17),
              ),
            ),
            const AmountsView(),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        color: DocColor.primary,
                        textColor: Colors.white,
                        splashColor: Colors.transparent,
                        elevation: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Send',
                            ),
                            Icon(
                              HeroIcons.arrow_up_right,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        color: DocColor.primary,
                        textColor: Colors.white,
                        splashColor: Colors.transparent,
                        elevation: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Receive',
                            ),
                            Icon(
                              HeroIcons.arrow_down_left,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {},
                        color: DocColor.primary,
                        textColor: Colors.white,
                        splashColor: Colors.transparent,
                        elevation: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Pay bills',
                            ),
                            Icon(
                              HeroIcons.wallet,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Quick access',
              style: interFont.copyWith(
                fontSize: res.setSp(17),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  controller.icons.length,
                  (index) => MaterialButton(
                    onPressed: () => {},
                    padding: const EdgeInsets.all(5),
                    child: GridTile(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.purple[100],
                            radius: 20,
                            child: Icon(
                              controller.icons[index].icon,
                              color: Colors.purple,
                              size: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            controller.icons[index].name,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction History',
                  style: interFont.copyWith(
                    fontSize: res.setSp(17),
                  ),
                ),
                TextButton(
                  onPressed: () => {},
                  child: const Text('Show more'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: List.generate(
                4,
                (index) => const TransactionHistory(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
