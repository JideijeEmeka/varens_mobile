import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:varens_app_test/helpers/app_colors.dart';
import 'package:varens_app_test/helpers/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                    )),
              ),
              Positioned(
                left: 5,
                top: 5,
                child: CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.blueColor,
                    backgroundImage: const AssetImage(kProfilePic)),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.whiteColor.withOpacity(0.3),
                    )),
              ),
              Positioned(
                  left: 19,
                  top: 19,
                  child: FaIcon(FontAwesomeIcons.ellipsisH,
                      color: AppColors.whiteColor))
            ],
          )
        ],
      ),
    );
  }
}
