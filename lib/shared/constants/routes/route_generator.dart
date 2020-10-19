import 'package:educruise/shared/constants/page_transition.dart';
import 'package:educruise/shared/constants/routes/routes.dart';
import 'package:educruise/views/onboarding.dart';
import 'package:educruise/views/splashscreen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return CustomSlideTransition(child: SplashScreen());
        break;
      case RouteNames.onboardingScreen:
        return CustomSlideTransition(child: Onboarding());
        break;
    }
  }
}
