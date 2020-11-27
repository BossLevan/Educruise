import 'package:educruise/shared/constants/routes/routes.dart';
import 'package:educruise/shared/widgets/filled_button.dart';
import 'package:educruise/shared/widgets/text_form_field.dart';
import 'package:educruise/views/login/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final loginModel = Provider.of<LoginModel>(context);
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
                  Form(
                    key: loginModel.formKey,
                    child: Column(
                      children: <Widget>[
                        CustomTextField(
                          onSaved: loginModel.onEmailSaved(),
                          formText: loginModel.emailText,
                          loginModel: loginModel,
                          icon: Icons.mail_outline,
                          text: 'Please enter your email',
                          obscuredText: false,
                        ),
                        SizedBox(height: 40.h),
                        CustomTextField(
                          onSaved: loginModel.onPasswordSaved(),
                          formText: loginModel.passwordText,
                          loginModel: loginModel,
                          icon: Icons.lock_outline,
                          text: 'Please enter your password',
                          obscuredText: true,
                        ),
                        SizedBox(height: 140.h),
                        GestureDetector(
                          onTap: () => {
                            Navigator.of(context)
                              ..pop()
                              ..pop()
                              ..pop()
                              ..pop()
                              ..pushNamed(RouteNames.homepageVolunteers)
                          },
                          //loginModel.onTapLogin(
                          //   loginModel.formKey, context),

                          // onTap: () {
                          child: FillButton(
                            text: 'Log In',
                          ),
                        )
                      ],
                    ),
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
