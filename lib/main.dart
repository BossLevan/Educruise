import 'package:educruise/core/providers/providers.dart';
import 'package:educruise/shared/constants/routes/route_generator.dart';
import 'package:educruise/shared/constants/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

//Wrapper to wrap the main widget with all the providers
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainApp();
    //MultiProvider(providers: providers, child: MainApp());
  }
}

//Main/root widget of the application.
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteNames.volunteerSignupLogin,
    );
  }
}
