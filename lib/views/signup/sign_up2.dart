import 'package:educruise/shared/widgets/filled_button.dart';
import 'package:educruise/shared/widgets/text_form_field.dart';
import 'package:educruise/views/signup/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignUp2 extends StatefulWidget {
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    final signupModel = Provider.of<SignUpModel>(context);
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
                    'Create Account',
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Enter Your Email, Phone And Password',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 60.h),
                  Form(
                    key: signupModel.formKey,
                    child: Column(
                      children: <Widget>[
                        CustomTextField(
                          onSaved: signupModel.onEmailSaved(),
                          formText: signupModel.emailText,
                          loginModel: signupModel,
                          icon: Icons.mail_outline,
                          text: 'Please enter your email',
                          obscuredText: false,
                        ),
                        SizedBox(height: 40.h),
                        CustomTextField(
                          onSaved: signupModel.onPasswordSaved(),
                          formText: signupModel.passwordText,
                          loginModel: signupModel,
                          icon: Icons.lock_outline,
                          text: 'Please enter your password',
                          obscuredText: true,
                        ),
                        SizedBox(height: 40.h),
                        CustomTextField(
                          textInputType: TextInputType.phone,
                          onSaved: signupModel.onPhoneNumberSaved(),
                          formText: signupModel.phoneNumberText,
                          loginModel: signupModel,
                          icon: Icons.phone,
                          text: 'Please enter your Phone Number',
                          obscuredText: false,
                        ),
                        SizedBox(height: 140.h),
                        GestureDetector(
                          onTap: signupModel.onTapLogin(
                              signupModel.formKey, context),
                          // onTap: () {
                          child: FillButton(
                            text: 'Next',
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
