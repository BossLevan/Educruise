import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VolunteerThankYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 60.h),
        color: appTheme.backgroundColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/shared/images/throwingConfetti.png'),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Thank You For Your Interest \nIn Volunteering!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Your application will you be reviewed and you \nwill be contacted once it is approved.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
