import 'package:flutter/material.dart';
import 'package:varens_app_test/helpers/app_colors.dart';
import 'package:varens_app_test/widgets/btc_section.dart';
import 'package:varens_app_test/widgets/buy_and_sell_widgets.dart';

class ChartDetails extends StatefulWidget {
  const ChartDetails({Key? key}) : super(key: key);

  @override
  _ChartDetailsState createState() => _ChartDetailsState();
}

class _ChartDetailsState extends State<ChartDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: SizedBox(
            child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TabBar(
                    labelColor: AppColors.greenColor,
                    unselectedLabelColor: AppColors.whiteColor.withOpacity(0.6),
                    indicatorColor: Colors.transparent,
                    tabs: const [
                      Tab(
                        text: "24H",
                      ),
                      Tab(
                        text: "1W",
                      ),
                      Tab(
                        text: "1M",
                      ),
                      Tab(
                        text: "1Y",
                      ),
                      Tab(
                        text: "All",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ImageIcon(
                    const AssetImage("assets/icons/setting.png"),
                    color: AppColors.whiteColor,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 150,
              child: TabBarView(children: [
                Text("book"),
                Text("book"),
                Text("book"),
                Text("book"),
                Text("book"),
              ]),
            )
          ],
        )));
  }
}
