import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageCardWithIconButton extends StatelessWidget {
  final String image;
  final String number;
  final String otherText;
  final String buttonText;
  const HomePageCardWithIconButton({
    this.buttonText,
    this.image,
    this.number,
    this.otherText,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage(image),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                '$number',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                '$otherText',
                style: TextStyle(
                  fontSize: 16.sp,
                  height: 1.7.sp,
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
