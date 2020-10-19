import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/dot_indicator.dart';
import 'package:educruise/shared/widgets/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: 0,
      keepPage: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appTheme.backgroundColor,
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: <Widget>[
            Container(
              height: height * .60,
              width: width,
              child: PageView(
                onPageChanged: onChangedFunction,
                controller: _controller,
                children: <Widget>[
                  OnboardScreen(
                    image: 'lib/shared/images/holdingFlag.png',
                    description: 'Welcome to the \nEducruise App',
                  ),
                  OnboardScreen(
                    image: 'lib/shared/images/usingCellphone.png',
                    description: 'Report Abuse Cases \nAnonymously',
                  ),
                  OnboardScreen(
                    image: 'lib/shared/images/personSpeaking.png',
                    description: 'Find A Lawyer Or Volunteer \nTo Talk To',
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              //height: height * .07,
              margin: EdgeInsets.only(top: 1.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Indicator(
                    positionIndex: 0,
                    currentIndex: currentIndex,
                  ),
                  SizedBox(
                    width: 2.63.w,
                  ),
                  Indicator(
                    positionIndex: 1,
                    currentIndex: currentIndex,
                  ),
                  SizedBox(
                    width: 2.63.w,
                  ),
                  Indicator(
                    positionIndex: 2,
                    currentIndex: currentIndex,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 250.w,
                  padding: EdgeInsets.symmetric(vertical: 25.h),
                  decoration: BoxDecoration(
                      color: appTheme.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(60.w))),
                  child: Center(
                    child: Text(
                      'I Am A Student',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: appTheme.backgroundColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: 250.w,
                  padding: EdgeInsets.symmetric(vertical: 25.h),
                  decoration: BoxDecoration(
                      color: appTheme.backgroundColor,
                      border: Border.all(
                        color: appTheme.primaryColor,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(60.w))),
                  child: Center(
                    child: Text(
                      'I Am A Volunteer',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: appTheme.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
