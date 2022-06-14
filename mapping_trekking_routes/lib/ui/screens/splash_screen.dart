import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mapping_trekking_routes/constants/assets.dart';
import 'package:mapping_trekking_routes/constants/classes.dart';
import 'package:mapping_trekking_routes/constants/colors.dart';
import 'package:mapping_trekking_routes/constants/dimension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, Classes.bottomNav, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 3),
          child: Container(
            padding: EdgeInsets.only(bottom: Dimension.scaleHeight(40, context)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.LOGO,
                ),
                SvgPicture.asset(Assets.TAG_IMG)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
