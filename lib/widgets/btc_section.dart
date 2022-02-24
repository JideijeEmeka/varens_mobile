import 'package:flutter/material.dart';
import 'package:varens_app_test/helpers/app_colors.dart';
import 'package:varens_app_test/helpers/app_text_styles.dart';

Widget btcSections() {
  return Container(
    height: 100,
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 20),
    color: AppColors.btcBgColor,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.btcLogoBgColor,
              ),
              child: ImageIcon(const AssetImage("assets/icons/cryptocurrency.png"),
                color: AppColors.orangeColor,)),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text("BTC", style: AppTextStyles.btcFont20,),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Text("-1.32%", style: AppTextStyles.usdFont14,),
                ),
              ],
            ),
          ),
          OutlinedButton(onPressed: () {},
              style: OutlinedButton.styleFrom(
                  primary: AppColors.blueColor,
                  onSurface: AppColors.whiteColor,
                  side: BorderSide(color: AppColors.whiteColor)
              ),
              child: Text("Change",))
        ],
      ),
    ),
  );
}