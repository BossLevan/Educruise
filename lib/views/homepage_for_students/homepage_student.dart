import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/card_with_icon_button.dart';
import 'package:educruise/shared/widgets/homepage_card_with_icon.dart';
import 'package:educruise/shared/widgets/hompage_card.dart';
import 'package:educruise/views/homepage_for_students/homepage_student_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class HomepageStudents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomePageStudentModel>(context);
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hello',
                      style: TextStyle(fontSize: 24.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'We hope you find the Information here useful',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      HomePageCard(
                        text: 'Have you been sexually abused?',
                        buttonText: 'Report',
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      HomePageCardWithIcon(
                        image: 'lib/shared/images/phone.png',
                        number: '12',
                        otherText: 'Helplines',
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      HomePageCard(
                        text:
                            'Find help near you. See if there’s someone to help at your campus',
                        buttonText: 'Find Campus',
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      HomePageCardWithIcon(
                        image: 'lib/shared/images/people.png',
                        number: '20',
                        otherText: 'Local Help Agencies',
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      HomePageCard(
                        text: 'Need counselling instead? Speak to a therapist',
                        buttonText: 'Book Session',
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      HomePageCardWithIconButton(
                        image: 'lib/shared/images/newspaper.png',
                        number: '147',
                        otherText: 'Helpful Articles',
                        buttonText: 'Learn More',
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
