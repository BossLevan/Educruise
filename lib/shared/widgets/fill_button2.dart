import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FillButton2 extends StatelessWidget {
  final String text;
  FillButton2({
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      padding: EdgeInsets.symmetric(vertical: 25.h),
      decoration: BoxDecoration(
          color: appTheme.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10.w))),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 14.sp,
              color: appTheme.backgroundColor,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
