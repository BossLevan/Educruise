import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddFileButton extends StatelessWidget {
  const AddFileButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      decoration: BoxDecoration(
          color: appTheme.backgroundColor,
          border: Border.all(
            color: appTheme.primaryColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.w))),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.arrow_upward,
              size: 22.sp,
              color: appTheme.primaryColor,
            ),
            Text(
              'Add File',
              style: TextStyle(
                fontSize: 16.sp,
                color: appTheme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
