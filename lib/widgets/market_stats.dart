import 'package:flutter/material.dart';
import 'package:varens_app_test/helpers/app_text_styles.dart';

Widget marketStats({required VoidCallback pressed,
  required String title,
  required ImageIcon logo, required String amount
}) {
  return
      ListTile(
            onTap: pressed,
            horizontalTitleGap: 2,
            leading: logo,
            title: Text(title, style: AppTextStyles.font15,),
            trailing: Text(amount, style: AppTextStyles.usdFont14,),
          );
}