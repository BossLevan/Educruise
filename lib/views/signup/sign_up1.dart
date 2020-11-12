import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/filled_button.dart';
import 'package:educruise/views/login/login_model.dart';
import 'package:educruise/views/signup/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignUp1 extends StatefulWidget {
  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
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
                    'Help Us Know You Better',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 60.h),
                  FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: appTheme.backgroundColor,
                          hintText: '${signupModel.selectedAccountType}',
                          hintStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 10.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                20,
                              ),
                            ),
                          ),
                        ),
                        isEmpty: false,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              size: 30.h,
                            ),
                            value: signupModel.selectedAccountType,
                            isDense: true,
                            onChanged: (String newValue) {
                              FocusScope.of(context)
                                  .requestFocus(new FocusNode());
                              setState(() {
                                signupModel.selectedAccountType = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: signupModel.accountType.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 240.h),
                  FillButton(text: 'Next'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
