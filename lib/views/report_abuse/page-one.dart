import 'package:educruise/shared/widgets/fill_button2.dart';
import 'package:educruise/shared/widgets/textfield_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageOne extends StatefulWidget {
  final model;
  PageOne({this.model});
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
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
            '1. Abuser Information',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
              'Fill the form with your abuser’s details. Leave blank if some details are not available.'),
          SizedBox(
            height: 50.h,
          ),
          Text(
            'Full Name Of Abuser',
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextField2(
            labelText: widget.model.nameOfAbuserController.text,
            model: widget.model,
            onSaved: widget.model.onNameOfAbuserSaved(),
          ),
          SizedBox(
            height: 40.h,
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
            onSaved: widget.model.onAbuserPhoneNumber(),
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
            onSaved: widget.model.onAbuserEmailAddress(),
          ),
          SizedBox(
            height: 100.h,
          ),
          GestureDetector(
            onTap: widget.model.navToPageTwo(),
            child: Center(
              child: FillButton2(
                text: 'Next',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
