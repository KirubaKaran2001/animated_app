import 'package:animated_app/screen/home_screen.dart';
import 'package:animated_app/screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (RouteSettings settings) {
          debugPrint('build route for ${settings.name}');
          var routes = <String, WidgetBuilder>{
            '/loginScreen': (BuildContext context) => const LoginScreen(),
            '/homeScreen': (BuildContext context) => const HomeScreen(),
          };
          WidgetBuilder builder = routes[settings.name]!;
          return MaterialPageRoute(
            builder: (ctx) => builder(ctx),
          );
        });
  }
}
