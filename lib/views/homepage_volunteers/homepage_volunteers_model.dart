import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomepageVolunteersModel extends ChangeNotifier {
  Color selectedColor = appTheme.primaryColor;
  Color defaultColor = Colors.black;
  var svgHome = SvgPicture.asset(
    'lib/shared/images/home.svg',
  );
  var svgPerson = SvgPicture.asset(
    'lib/shared/images/person.svg',
    color: Colors.black,
  );

  Function onSelectedColor() {
    return () => {};
  }
}
