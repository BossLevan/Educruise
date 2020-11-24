import 'package:educruise/shared/widgets/fill_button2.dart';
import 'package:educruise/shared/widgets/textfield_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTwo extends StatefulWidget {
  final model;
  PageTwo({this.model});
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: widget.model.formKeyPageTwo,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.h,
            ),
            Text(
              '2. Social Media Details',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
                'Copy and paste links to the abuser social profiles here. Its okay if you don’t know it.'),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Facebook',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField2(
              controller: widget.model.abuserFacebookProfileController,
              model: widget.model,
              onSaved: widget.model.onAbuserFacebookProfile(),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Twitter',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField2(
              controller: widget.model.abuserTwitterProfileController,
              model: widget.model,
              onSaved: widget.model.onAbuserTwitterProfile(),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'LinkedIn',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField2(
              controller: widget.model.abuserLinkedInProfileController,
              model: widget.model,
              onSaved: widget.model.onAbuserLinkedInProfile(),
            ),
            SizedBox(
              height: 100.h,
            ),
            GestureDetector(
              onTap: widget.model.navToPageThree(),
              child: Center(
                child: FillButton2(
                  text: 'Next',
                ),
              ),
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
