import 'package:flutter/material.dart';
import 'package:varens_app_test/helpers/app_colors.dart';
class AppTextStyles {
  static final dashBoardFont20 = TextStyle(
      fontSize: 30,
      color: AppColors.whiteColor, fontWeight: FontWeight.w600,
  );

  static final usdFont14 = TextStyle(
    fontSize: 14,
    color: AppColors.whiteColor.withOpacity(0.3), fontWeight: FontWeight.w400,
  );

  static final priceFont14 = TextStyle(
    fontSize: 14,
    color: AppColors.greenColor, fontWeight: FontWeight.w500,
  );

  static final btcFont20 = TextStyle(
    fontSize: 20,
    color: AppColors.orangeColor, fontWeight: FontWeight.w600,
  );

  static final sellTradeFont17 = TextStyle(
    fontSize: 17,
    color: AppColors.brownColor, fontWeight: FontWeight.w600,
  );

  static final buyTradeFont17 = TextStyle(
    fontSize: 17,
    color: AppColors.whiteColor, fontWeight: FontWeight.w600,
  );

  static final font15 = TextStyle(
    fontSize: 15,
    color: AppColors.whiteColor, fontWeight: FontWeight.w500,
  );
}