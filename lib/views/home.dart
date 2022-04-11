import 'package:flutter/material.dart';
import 'package:varens_app_test/helpers/app_colors.dart';
import 'package:varens_app_test/helpers/app_text_styles.dart';
import 'package:varens_app_test/views/chart_details.dart';
import 'package:varens_app_test/views/navigation_bar.dart';
import 'package:varens_app_test/widgets/btc_section.dart';
import 'package:varens_app_test/widgets/buy_and_sell_widgets.dart';
import 'package:varens_app_test/widgets/market_stats.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(alignment: Alignment.bottomCenter, children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NavBar(),
              btcSections(),
              const ChartDetails(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: buySellBtn(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 8),
                      child: Text(
                        "About",
                        style: AppTextStyles.font15,
                      ),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                      "Mattis posuere non tellus dictum at. Integer eget sed amet "
                      "nisi, elit odio.",
                      style: AppTextStyles.usdFont14,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 8),
                      child: Text(
                        "Market Stats",
                        style: AppTextStyles.font15,
                      ),
                    ),
                    marketStats(
                        pressed: () {},
                        title: "Market Cap",
                        logo: ImageIcon(
                          const AssetImage("assets/icons/market_cap.png"),
                          color: AppColors.greenColor,
                        ),
                        amount: "41,228.00 BTC"),
                    marketStats(
                        pressed: () {},
                        title: "Volume (24 h)",
                        logo: ImageIcon(
                          const AssetImage("assets/icons/market_cap.png"),
                          color: AppColors.greenColor,
                        ),
                        amount: "\$12,999.00"),
                    marketStats(
                        pressed: () {},
                        title: "Available Supply",
                        logo: ImageIcon(
                          const AssetImage("assets/icons/market_cap.png"),
                          color: AppColors.greenColor,
                        ),
                        amount: "9,771.64"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
