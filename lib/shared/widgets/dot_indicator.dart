import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  Indicator({this.currentIndex, this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: positionIndex == currentIndex ? 15.h : 12.h,
      height: positionIndex == currentIndex ? 15.h : 12.h,
      decoration: BoxDecoration(
          color: positionIndex == currentIndex
              ? appTheme.primaryColor
              : appTheme.hintColor,
          borderRadius: BorderRadius.circular(30.h)),
    );
  }
}
