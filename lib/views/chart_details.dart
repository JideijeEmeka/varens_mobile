import 'package:flutter/material.dart';
import 'package:varens_app_test/helpers/app_colors.dart';

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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 250,
              child: const TabBarView(physics: ScrollPhysics(), children: [
                Text(
                  "pig",
                  style: TextStyle(color: Colors.white),
                ),
                Text("car"),
                Text("book"),
                Text("book"),
                Text("book"),
              ]),
            ),
          ],
        ));
  }
}
