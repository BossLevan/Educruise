import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/filled_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Enter Your Email And Password',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 60.h),
                  Column(
                    children: <Widget>[
                      CustomTextField(
                        icon: Icons.mail_outline,
                        text: 'Please enter your email',
                        obscuredText: false,
                      ),
                      SizedBox(height: 40.h),
                      CustomTextField(
                        icon: Icons.lock_outline,
                        text: 'Please enter your password',
                        obscuredText: true,
                      ),
                      SizedBox(height: 140.h),
                      FillButton(
                        text: 'Log In',
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool obscuredText;
  CustomTextField({
    this.icon,
    this.obscuredText,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscuredText,
      decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icon,
            color: Colors.grey[600],
          ),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
            borderSide: BorderSide(color: appTheme.primaryColor, width: 1),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[600]),
          hintText: widget.text,
          fillColor: appTheme.backgroundColor),
    );
  }
}
