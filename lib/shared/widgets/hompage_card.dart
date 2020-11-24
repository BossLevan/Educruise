import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageCard extends StatelessWidget {
  final String text;
  final String buttonText;
  const HomePageCard({
    this.buttonText,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(174, 174, 192, 0.15),
          blurRadius: 15.h,
          offset: Offset(0, 1.h),
        )
      ]),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.h),
        ),
        child: Container(
          padding: EdgeInsets.all(30.0.h),
          width: 160.w,
          child: Column(
            children: <Widget>[
              Text(
                '$text',
                style: TextStyle(
                  height: 1.7.sp,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                padding: EdgeInsets.all(10.h),
                child: Center(
                  child: Text(
                    '$buttonText',
                    style: TextStyle(
                        fontSize: 14.sp, color: appTheme.backgroundColor),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(76, 59, 153, 0.4),
                        blurRadius: 10.w,
                        offset: Offset(0.w, 2.h))
                  ],
                  color: appTheme.primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.w),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
