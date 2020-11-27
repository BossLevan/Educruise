import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AbuseCard extends StatefulWidget {
  final model;
  const AbuseCard({
    this.model,
    Key key,
  }) : super(key: key);

  @override
  _AbuseCardState createState() => _AbuseCardState();
}

class _AbuseCardState extends State<AbuseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(174, 174, 192, 0.25),
          blurRadius: 15.h,
          offset: Offset(0, 1.h),
        )
      ]),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.h),
        ),
        child: Container(
          padding: EdgeInsets.all(30.0.h),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Location: Benin Nigeria',
                style: TextStyle(
                  height: 1.7.sp,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'This would probably be a snippet of what happened during the sexual abuse incident ...',
                style: TextStyle(
                  height: 1.7.sp,
                  fontSize: 16.sp,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 25.h,
              ),
              Wrap(
                spacing: 20.w,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10.h),
                    width: 120.w,
                    child: Center(
                      child: Text(
                        'With Evidence',
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0XFFACE7FF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.w),
                      ),
                    ),
                  ),
                  Container(
                    width: 120.w,
                    padding: EdgeInsets.all(10.h),
                    child: Center(
                      child: Text(
                        'Contact Info',
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0XFFAFF8D8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.w),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    width: 120.w,
                    padding: EdgeInsets.all(10.h),
                    child: Center(
                      child: Text(
                        'Similar Incident',
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0XFFECD4FF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.w),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
