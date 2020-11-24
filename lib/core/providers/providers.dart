//add view models here
import 'package:educruise/views/homepage_for_students/homepage_student_model.dart';
import 'package:educruise/views/login/login_model.dart';
import 'package:educruise/views/report_abuse/report_abuse_model.dart';
import 'package:educruise/views/signup/sign_up_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final providers = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => LoginModel()),
  ChangeNotifierProvider(create: (_) => SignUpModel()),
  ChangeNotifierProvider(create: (_) => ReportAbuseModel()),
  ChangeNotifierProvider(create: (_) => HomePageStudentModel())
];
