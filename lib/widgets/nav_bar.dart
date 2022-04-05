import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:varens_app_test/helpers/app_colors.dart';
import 'package:varens_app_test/helpers/app_text_styles.dart';
import 'package:varens_app_test/helpers/constants.dart';
import 'package:varens_app_test/views/home.dart';
import 'package:varens_app_test/views/portfolio.dart';
import 'package:varens_app_test/views/wallet.dart';
import 'package:varens_app_test/widgets/btc_section.dart';
import 'package:varens_app_test/widgets/buy_and_sell_widgets.dart';
import 'package:varens_app_test/widgets/market_stats.dart';

class TradingView extends StatefulWidget {
  const TradingView({Key? key}) : super(key: key);

  @override
  _TradingViewState createState() => _TradingViewState();
}

class _TradingViewState extends State<TradingView> {
  int _currentIndex = 0;
  List screens = [const HomeView(), const Portfolio(), const Wallet()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Stack(alignment: Alignment.bottomCenter, children: [
          screens[_currentIndex],
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BottomNavigationBar(
                    onTap: (index) {
                      if (index != _currentIndex) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }
                    },
                    backgroundColor: AppColors.bgColor,
                    selectedItemColor: Colors.blue,
                    showUnselectedLabels: true,
                    type: BottomNavigationBarType.fixed,
                    currentIndex: _currentIndex,
                    items: const [
                      BottomNavigationBarItem(
                          icon: ImageIcon(AssetImage("assets/icons/home.png")),
                          label: 'Home'),
                      BottomNavigationBarItem(
                          icon: ImageIcon(
                            AssetImage("assets/icons/vector.png"),
                          ),
                          label: 'Portfolio'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.account_balance_wallet_outlined),
                          label: 'Wallet'),
                    ]),
              ],
            ),
        ]),
      ),
    );
  }
}
