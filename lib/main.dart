import 'package:flutter/material.dart';
import 'package:sawari_pk/utils/routes/routes.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFCFDFF),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white, // Set app bar color to white
          elevation: 0, // Remove app bar elevation
        ),
      ),
      initialRoute: RoutesName.home,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
