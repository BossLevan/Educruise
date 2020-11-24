import 'dart:math';

import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/views/report_abuse/page-one.dart';
import 'package:educruise/views/report_abuse/page_four.dart';
import 'package:educruise/views/report_abuse/page_three.dart';
import 'package:educruise/views/report_abuse/page_two.dart';
import 'package:educruise/views/report_abuse/report_abuse_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ReportAbuse extends StatefulWidget {
  @override
  _ReportAbuseState createState() => _ReportAbuseState();
}

class _ReportAbuseState extends State<ReportAbuse> {
  @override
  Widget build(BuildContext context) {
    final reportAbuseModel = Provider.of<ReportAbuseModel>(context);
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: <Widget>[
                Transform.rotate(
                  angle: pi / 4,
                  child: Icon(
                    Icons.add,
                    size: 30.sp,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Report An Abuse',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                      onTap: reportAbuseModel.navToPageOne(),
                      child: NumberCircle(
                        number: '1',
                        model: reportAbuseModel,
                      )),
                  SizedBox(
                    width: 5.h,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        CustomDivider(
                          number: '2',
                          model: reportAbuseModel,
                        ),
                        SizedBox(
                          width: 5.h,
                        ),
                        GestureDetector(
                            onTap: reportAbuseModel.navToPageTwo(),
                            child: NumberCircle(
                              number: '2',
                              model: reportAbuseModel,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        CustomDivider(
                          number: '3',
                          model: reportAbuseModel,
                        ),
                        SizedBox(
                          width: 5.h,
                        ),
                        GestureDetector(
                            onTap: reportAbuseModel.navToPageThree(),
                            child: NumberCircle(
                              number: '3',
                              model: reportAbuseModel,
                            )),
                        SizedBox(
                          width: 5.h,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              CustomDivider(
                                number: '4',
                                model: reportAbuseModel,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              GestureDetector(
                                  onTap: reportAbuseModel.navToPageFour(),
                                  child: NumberCircle(
                                    number: '4',
                                    model: reportAbuseModel,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: reportAbuseModel.pageController,
                children: <Widget>[
                  PageOne(
                    model: reportAbuseModel,
                  ),
                  PageTwo(
                    model: reportAbuseModel,
                  ),
                  PageThree(
                    model: reportAbuseModel,
                  ),
                  PageFour(
                    model: reportAbuseModel,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberCircle extends StatefulWidget {
  final model;
  final String number;
  NumberCircle({
    this.model,
    this.number,
    Key key,
  }) : super(key: key);

  @override
  _NumberCircleState createState() => _NumberCircleState();
}

class _NumberCircleState extends State<NumberCircle> {
  @override
  Widget build(BuildContext context) {
    //print(int.parse(widget.number));
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: int.parse(widget.number) < widget.model.page + 2
            ? appTheme.primaryColor
            : Colors.grey,
        shape: BoxShape.circle,
      ),
      child: Text(
        widget.number,
        style: TextStyle(color: appTheme.backgroundColor),
      ),
    );
  }
}

class CustomDivider extends StatefulWidget {
  final model;
  final String number;
  const CustomDivider({
    this.model,
    this.number,
    Key key,
  }) : super(key: key);

  @override
  _CustomDividerState createState() => _CustomDividerState();
}

class _CustomDividerState extends State<CustomDivider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.0,
      child: new Center(
        child: new Container(
          margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
          width: 40.w,
          height: 2.0.h,
          color: int.parse(widget.number) < widget.model.page + 2
              ? appTheme.primaryColor
              : Colors.grey,
        ),
      ),
    );
  }
}
