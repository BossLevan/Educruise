import 'dart:math';
import 'package:educruise/shared/constants/routes/routes.dart';
import 'package:educruise/shared/widgets/filled_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmDetails extends StatelessWidget {
  //this model contains everything to be sent to the sb
  final model;
  ConfirmDetails({this.model});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Transform.rotate(
                        angle: pi / 4,
                        child: Icon(
                          Icons.add,
                          size: 30.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Text(
                      'Confirm Details',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  '1. Abuser Information',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 80.h,
                            child: Text(
                              'NAME',
                              style: TextStyle(
                                color: Color(0XFF999999),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            child: Text(
                              'EMAIL',
                              style: TextStyle(
                                color: Color(0XFF999999),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            child: Text(
                              'PHONE',
                              style: TextStyle(
                                color: Color(0XFF999999),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            child: Text(
                              'RELATIONSHIP',
                              style: TextStyle(
                                color: Color(0XFF999999),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            child: Text(
                              'FACEBOOK',
                              style: TextStyle(
                                color: Color(0XFF999999),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            child: Text(
                              'TWITTER',
                              style: TextStyle(
                                color: Color(0XFF999999),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            child: Text(
                              'LINKEDIN',
                              style: TextStyle(
                                color: Color(0XFF999999),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 80.h,
                            child: Text(
                              '${model.nameOfAbuser}' ?? '',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              '${model.abuserEmailAddress}' ?? '-',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              '${model.abuserPhoneNumber}' ?? '-',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              '${model.relationshipToAbuser}',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              '${model.abuserFacebookProfile}' ?? '-',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              '${model.abuserTwitterProfile}' ?? '-',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 80.h,
                            child: Text(
                              '${model.abuserLinkedInProfile}' ?? '-',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  '2. Abuse Details',
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
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'LOCATION',
                            style: TextStyle(
                              color: Color(0XFF999999),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 80.h,
                          ),
                          Text(
                            'DATE',
                            style: TextStyle(
                              color: Color(0XFF999999),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 60.w),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            height: 85.h,
                            child: Text(
                              '${model.placeOfAbuse}',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            height: 85.h,
                            child: Text(
                              '${model.timeOfAbuse}',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'INCIDENT SUMMARY',
                  style: TextStyle(
                    color: Color(0XFF999999),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  child: Text(
                    '${model.summaryOfAbuse}',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'EVIDENCE',
                      style: TextStyle(
                        color: Color(0XFF999999),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: '               ${model.yesOrNo}',
                      style: TextStyle(
                        color: Color(0XFF222222),
                        fontSize: 16.sp,
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'NATURE OF EVIDENCE',
                  style: TextStyle(
                    color: Color(0XFF999999),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  child: Text(
                    '${model.natureOfEvidence}',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'ATTACHMENTS',
                  style: TextStyle(
                    color: Color(0XFF999999),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Img201694848.png',
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.pop(context),
                  },
                  child: Center(
                    child: FillButton(
                      text: 'Submit',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
