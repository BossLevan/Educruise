import 'package:educruise/shared/constants/page_transition.dart';
import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardScreen extends StatelessWidget {
  final String image;
  final String description;

  OnboardScreen({this.image, this.description});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appTheme.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      // Navigator.pushReplacementNamed(
                      //     context, RouteNames.signup);
                    }, //navigate to the sign up page
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          //color: Theme.of(context).primaryColorDark,
                          fontSize: 4.5.sp,
                          fontWeight: FontWeight.normal),
                    ),
                    //color: Colors.transparent,
                  ),
                ],
              ),
              Container(
                height: height * .38,
                width: width,
                decoration: BoxDecoration(
                    //color: appTheme.backgroundColor,
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain)),
              ),
              SizedBox(height: 30.h),
              //ForwardAnimation(
              //   milliseconds: 500,
              //   child:
              Text(description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400)),
              //),
            ],
          ),
        ),
      ),
    );
  }
}
