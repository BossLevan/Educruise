import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/shared/widgets/abuse_card.dart';
import 'package:educruise/shared/widgets/search_textfield.dart';
import 'package:educruise/views/homepage_volunteers/homepage_volunteers_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomepageVolunteers extends StatefulWidget {
  @override
  _HomepageVolunteersState createState() => _HomepageVolunteersState();
}

class _HomepageVolunteersState extends State<HomepageVolunteers> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomepageVolunteersModel>(context);
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Welcome',
                        style: TextStyle(fontSize: 24.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Keep track of reported sexual abuse cases ',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CustomSearchField(
                            obscuredText: false,
                            icon: Icons.search,
                            text: 'Search',
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(22.h),
                            child: Icon(Icons.filter_list),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              //borderRadius: BorderRadius.all(Radius.circular(60.w)),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      AbuseCard(),
                      SizedBox(
                        height: 30.h,
                      ),
                      AbuseCard(),
                      SizedBox(
                        height: 30.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              child: model.svgHome,
            ),
            title: Container(
              margin: EdgeInsets.only(top: 8.h),
              height: 8.h,
              width: 8.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: appTheme.primaryColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
              icon: Container(
                child: model.svgPerson,
              ),
              title: SizedBox(
                height: 16.h,
              ))
        ],
      ),
    );
  }
}
