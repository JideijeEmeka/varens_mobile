import 'package:flutter/material.dart';
import 'package:varens_app_test/helpers/app_colors.dart';
import 'package:varens_app_test/helpers/app_text_styles.dart';

Widget btcSections() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "123.342,62",
              style: AppTextStyles.dashBoardFont20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: Text(
                "USD",
                style: AppTextStyles.usdFont14,
              ),
            ),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "\$120.234,21",
            style: AppTextStyles.priceFont14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              "+8,1%",
              style: AppTextStyles.usdFont14,
            ),
          ),
        ],
      ),
      Container(
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
                  child: ImageIcon(
                    const AssetImage("assets/icons/cryptocurrency.png"),
                    color: AppColors.orangeColor,
                  )),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Text(
                      "BTC",
                      style: AppTextStyles.btcFont20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text(
                        "-1.32%",
                        style: AppTextStyles.usdFont14,
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      primary: AppColors.blueColor,
                      onSurface: AppColors.whiteColor,
                      side: BorderSide(color: AppColors.whiteColor)),
                  child: const Text(
                    "Change",
                  ))
            ],
          ),
        ),
      ),
    ],
  );
}
