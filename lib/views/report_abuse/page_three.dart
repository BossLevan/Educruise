import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/add_file_button.dart';
import 'package:educruise/shared/widgets/fill_button2.dart';
import 'package:educruise/shared/widgets/textfield_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageThree extends StatefulWidget {
  final model;
  PageThree({this.model});
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    print(widget.model.evidenceAvailable);
    return SingleChildScrollView(
      child: Form(
        key: widget.model.formKeyPageThree,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.h,
            ),
            Text(
              '3. Abuse Details and Evidence',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
                'To help you better, we would love to get detailed accurate information about what happened. '),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Where did this happen?',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Kindly include address, city, state, and country.',
              style: TextStyle(
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormField(
              controller: widget.model.placeOfAbuseController,
              onSaved: widget.model.onPlaceOfAbuse(),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'What Time Did This Happen?',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormField(
              controller: widget.model.timeOfAbuseController,
              onSaved: widget.model.onTimeOfAbuse(),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Describe The Incident (Summary)',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            TextFormField(
              controller: widget.model.summaryOfAbuseController,
              onSaved: widget.model.onSummaryOfAbuse(),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Do You Have Any Evidence?',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 22,
                  child: Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: Color(0xff7398D3),
                    value: 0,
                    groupValue: widget.model.selectedValuePageThree,
                    onChanged: widget.model.onRadioButtonChangedPageThree(),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text('Yes'),
                SizedBox(
                  width: 10.w,
                ),
                Radio(
                  activeColor: Color(0xff7398D3),
                  value: 1,
                  groupValue: widget.model.selectedValuePageThree,
                  onChanged: widget.model.onRadioButtonChangedPageThree(),
                ),
                Text('No'),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Kindly State The Nature Of The Evidence',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
                'This could be a video footage, audio recording, medical report, physical material, etc'),
            SizedBox(
              height: 20.h,
            ),
            TextFormField(
              enabled: widget.model.evidenceAvailable,
              controller: widget.model.natureOfEvidenceController,
              onSaved: widget.model.onEvidenceOfAbuse(),
            ),
            SizedBox(
              height: 60.h,
            ),
            AddFileButton(),
            SizedBox(
              height: 100.h,
            ),
            GestureDetector(
              onTap: widget.model.navToPageFour(),
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
