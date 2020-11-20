import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/fill_button2.dart';
import 'package:educruise/shared/widgets/textfield_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageFour extends StatefulWidget {
  final model;
  PageFour({this.model});
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20.h,
          ),
          Text(
            '4. Your Contact Information',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Radio(
                activeColor: Colors.green,
                groupValue: widget.model.selectedValue,
                value: 0,
                onChanged: widget.model.onRadioButtonChanged(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Submit Anonymously',
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: Color(0XFF222222),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      'By clicking ‘Submit anonymously’, you have chosen to hide your identity and would not be contacted for a follow-up by a volunteer.',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0XFF4F4F4F),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Radio(
                activeColor: Colors.green,
                groupValue: widget.model.selectedValue,
                value: 1,
                onChanged: widget.model.onRadioButtonChanged(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Request a follow-up',
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: Color(0XFF222222),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      'Kindly fill the form with your details if you would like a follow up with a lawyer/human right activist.  Your information will never be shared with unverified volunteers. ',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0XFF4F4F4F),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            'Phone Number',
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextField2(
            model: widget.model,
            onSaved: widget.model.onStudentPhoneNumber(),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Email Address',
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextField2(
            model: widget.model,
            onSaved: widget.model.onStudentEmail(),
          ),
          SizedBox(
            height: 100.h,
          ),
          GestureDetector(
            onTap: widget.model.navToPageTwo(),
            child: Center(
              child: FillButton2(
                text: 'Submit',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
