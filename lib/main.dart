import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sawari_pk/utils/routes/routes.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import 'package:sawari_pk/view_model/auth_view_model.dart';
import 'package:sawari_pk/view_model/home_view_view_modal.dart';
import 'package:sawari_pk/view_model/user_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserViewModel(),
        ),
        ChangeNotifierProvider(create: (_) => HomeViewViewModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RoutesName.onBoarding1,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
