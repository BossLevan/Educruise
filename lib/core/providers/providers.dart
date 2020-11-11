//add view models here
import 'package:educruise/views/login/login_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final providers = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => LoginModel())
];
