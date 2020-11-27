import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/border_button.dart';
import 'package:educruise/shared/widgets/filled_button.dart';
import 'package:educruise/views/login/login_page.dart';
import 'package:educruise/views/signup/sign_up1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VolunteerSignupLogin extends StatelessWidget {
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
              'As a volunteer, you can help students \nget justice on abuse cases',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SignUp1(),
                  ),
                )
              },
              child: FillButton(
                text: 'Sign Up',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Login(),
                  ),
                )
              },
              child: BorderButton(
                text: 'Log In',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
