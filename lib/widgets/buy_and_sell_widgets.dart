import 'package:flutter/material.dart';
import 'package:varens_app_test/helpers/app_colors.dart';
import 'package:varens_app_test/helpers/app_text_styles.dart';

Widget buySellBtn() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.brownColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: Text("Sell", style: AppTextStyles.sellTradeFont17,),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColors.lightGreenColor,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: Text("Buy", style: AppTextStyles.buyTradeFont17,),
          ),
        )
      ],),
  );
}