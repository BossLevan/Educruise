import 'package:educruise/shared/widgets/filled_button.dart';
import 'package:educruise/shared/widgets/text_form_field.dart';
import 'package:educruise/views/signup/sign_up3.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp2 extends StatefulWidget {
  final signupModel;
  SignUp2({this.signupModel});
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    //final signupModel = Provider.of<SignUpModel>(context);
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
                    key: widget.signupModel.formKey,
                    child: Column(
                      children: <Widget>[
                        CustomTextField(
                          onSaved: widget.signupModel.onEmailSaved(),
                          formText: widget.signupModel.emailText,
                          loginModel: widget.signupModel,
                          icon: Icons.mail_outline,
                          text: 'Please enter your email',
                          obscuredText: false,
                        ),
                        SizedBox(height: 40.h),
                        CustomTextField(
                          onSaved: widget.signupModel.onPasswordSaved(),
                          formText: widget.signupModel.passwordText,
                          loginModel: widget.signupModel,
                          icon: Icons.lock_outline,
                          text: 'Please enter your password',
                          obscuredText: true,
                        ),
                        SizedBox(height: 40.h),
                        CustomTextField(
                          textInputType: TextInputType.phone,
                          onSaved: widget.signupModel.onPhoneNumberSaved(),
                          formText: widget.signupModel.phoneNumberText,
                          loginModel: widget.signupModel,
                          icon: Icons.phone,
                          text: 'Please enter your Phone Number',
                          obscuredText: false,
                        ),
                        SizedBox(height: 100.h),
                        GestureDetector(
                          onTap: () => {
                            if (widget.signupModel.formKey.currentState
                                .validate())
                              {
                                widget.signupModel.formKey.currentState.save(),
                                Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SignUp3(
                                  signupModel: widget.signupModel,
                                ),
                              ),
                            )
                              },
                            
                          },

                          // onTap: widget.signupModel
                          //     .onTapLogin(widget.signupModel.formKey, context),
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
