import 'package:educruise/core/services/api_service.dart';
import 'package:educruise/shared/constants/routes/routes.dart';
import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/filled_button.dart';

import 'package:educruise/views/thank_you_volunteer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp4 extends StatefulWidget {
  final signupModel;
  SignUp4({this.signupModel});

  @override
  _SignUp4State createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {
  final client = ApiClient();

  @override
  Widget build(BuildContext context) {
    //final signupModel = Provider.of<SignUpModel>(context);
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                      'Kindly upload a headshot of yourself or an image representing your organization',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      width: 140.w,
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
                    SizedBox(height: 80.h),
                    Text(
                      '2. Upload a Certificate',
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
                    SizedBox(height: 30.h),
                    Container(
                      width: 140.w,
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
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80.h),
                GestureDetector(
                    onTap: () => {
                          widget.signupModel.formKey.currentState.save(),
                          Navigator.of(context)
                            ..pop()
                            ..pop()
                            ..pop()
                            ..pop()
                            ..pushNamed(RouteNames.volunteerThankYou),
                          // Scaffold.of(context).showSnackBar(
                          //   SnackBar(
                          //     content: Text(
                          //         'Thank You for applying! You will be contacted shortly.'),
                          //   ),
                          // ),
                        },
                    child: FillButton(text: 'Submit')),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
