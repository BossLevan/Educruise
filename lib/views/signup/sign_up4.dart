import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/filled_button.dart';
import 'package:educruise/views/signup/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignUp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final signupModel = Provider.of<SignUpModel>(context);
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 100.h),
                Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Kindly Upload all the necessary documents',
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 80.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '1. Upload a profile photo',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Kindly upload a headshot of yourself or an image representing your oorganization',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 150.w,
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 24.w),
                      decoration: BoxDecoration(
                          color: appTheme.backgroundColor,
                          border: Border.all(
                            color: appTheme.primaryColor,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.w))),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_upward,
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
                      )),
                    ),
                    SizedBox(height: 40.h),
                    Text(
                      '1. Upload a profile photo',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Please upload a certificate of practice or any supporting documents which may include, but not limited to organizational registration documents.',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 150.w,
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 24.w),
                      decoration: BoxDecoration(
                          color: appTheme.backgroundColor,
                          border: Border.all(
                            color: appTheme.primaryColor,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.w))),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_upward,
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
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 80.h),
                FillButton(text: 'Submit'),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
