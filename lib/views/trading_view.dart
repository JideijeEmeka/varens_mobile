import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:varens_app_test/helpers/app_colors.dart';
import 'package:varens_app_test/helpers/app_text_styles.dart';
import 'package:varens_app_test/helpers/constants.dart';
import 'package:varens_app_test/widgets/btc_section.dart';
import 'package:varens_app_test/widgets/buy_and_sell_widgets.dart';
import 'package:varens_app_test/widgets/market_stats.dart';

class TradingView extends StatefulWidget {
  const TradingView({Key? key}) : super(key: key);

  @override
  _TradingViewState createState() => _TradingViewState();
}

class _TradingViewState extends State<TradingView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(children: [
                          Container(
                            height: 60, width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white.withOpacity(0.3),)
                            ),),
                          Positioned(
                            left: 5,
                            top: 5,
                            child: CircleAvatar(radius: 25,
                                backgroundColor: AppColors.blueColor,
                                backgroundImage: const AssetImage(kProfilePic)),
                          ),
                        ],),
                        Stack(children: [
                          Container(
                            height: 60, width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: AppColors.whiteColor.withOpacity(0.3),)
                            ),),
                          Positioned(
                              left: 19,
                              top: 19,
                              child: FaIcon(FontAwesomeIcons.ellipsisH, color: AppColors.whiteColor))
                        ],)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("123.342,62", style: AppTextStyles.dashBoardFont20,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 5),
                          child: Text("USD", style: AppTextStyles.usdFont14,),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("\$120.234,21", style: AppTextStyles.priceFont14,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("+8,1%", style: AppTextStyles.usdFont14,),
                      ),
                    ],),
                  btcSections(),
                  Row(
                    children: [
                      Expanded(
                        child: TabBar(
                          labelColor: AppColors.greenColor,
                          unselectedLabelColor: AppColors.whiteColor.withOpacity(0.6),
                          indicatorColor: Colors.transparent,
                          tabs: const [
                            Tab(text: "24H",),
                            Tab(text: "1W",),
                            Tab(text: "1M",),
                            Tab(text: "1Y",),
                            Tab(text: "All",),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageIcon(const AssetImage("assets/icons/setting.png"),
                          color: AppColors.whiteColor,),
                      )
                    ],
                  ),
                  const SizedBox(height: 200,),
                  buySellBtn(),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 8),
                          child: Text("About", style: AppTextStyles.font15,),),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                            "Mattis posuere non tellus dictum at. Integer eget sed amet "
                            "nisi, elit odio.", style: AppTextStyles.usdFont14,),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 8),
                          child: Text("Market Stats", style: AppTextStyles.font15,),),
                        marketStats(pressed: () {}, title: "Market Cap",
                            logo: ImageIcon(const AssetImage("assets/icons/market_cap.png"),
                              color: AppColors.greenColor,),
                            amount: "41,228.00 BTC"),
                        marketStats(pressed: () {}, title: "Volume (24 h)",
                            logo: ImageIcon(const AssetImage("assets/icons/market_cap.png"),
                              color: AppColors.greenColor,),
                            amount: "\$12,999.00"),
                        marketStats(pressed: () {}, title: "Available Supply",
                            logo: ImageIcon(const AssetImage("assets/icons/market_cap.png"),
                              color: AppColors.greenColor,),
                            amount: "9,771.64"),
                      ],
                    ),
                  ),

                ],),
            ),
            BottomNavigationBar(
              backgroundColor: AppColors.bgColor,
                items: [
                  const BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/icons/home.png")), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/icons/vector.png"),
                        color: AppColors.blueColor,),
                      label: 'Portfolio'),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.account_balance_wallet_outlined),
                      label: 'Wallet'),
                ]),
          ]
        ),
      ),
    );
  }
}