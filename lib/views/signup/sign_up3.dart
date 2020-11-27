import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/filled_button.dart';
import 'package:educruise/shared/widgets/text_form_field.dart';
import 'package:educruise/views/signup/sign_up4.dart';
import 'package:educruise/views/signup/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp3 extends StatefulWidget {
  final signupModel;
  SignUp3({this.signupModel});
  @override
  _SignUp3State createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  @override
  Widget build(BuildContext context) {
    //final signupModel = Provider.of<SignUpModel>(context);
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Form(
              key: widget.signupModel.pageThreeFormKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 100.h),
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Let Us Know why you want to Volunteer',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 60.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'What is your motivation to Volunteer?',
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 30.h),
                      CustomTextField(
                        textInputType: TextInputType.multiline,
                        maxLines: 5,
                        onSaved:
                            widget.signupModel.motivationToVolunteerSaved(),
                        formText: widget.signupModel.motivationToVolunteerText,
                        loginModel: widget.signupModel,
                        obscuredText: false,
                      ),
                      SizedBox(height: 50.h),
                      Text(
                        'What experience do you have in this field? And how can you help to assist victims',
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 30.h),
                      CustomTextField(
                        textInputType: TextInputType.multiline,
                        maxLines: 5,
                        onSaved:
                            widget.signupModel.experienceInVolunteeringSaved(),
                        formText:
                            widget.signupModel.experienceInVolunteeringText,
                        loginModel: widget.signupModel,
                        obscuredText: false,
                      ),
                      SizedBox(height: 30.h),
                    ],
                  ),
                  SizedBox(height: 60.h),
                  GestureDetector(
                      onTap: () => {
                            widget.signupModel.pageThreeFormKey.currentState
                                .save(),
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SignUp4(
                                  signupModel: widget.signupModel,
                                ),
                              ),
                            )
                          },
                      child: FillButton(text: 'Next')),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
