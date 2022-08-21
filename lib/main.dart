import 'package:flutter/material.dart';

//screens
import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFire Samples',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.w300,
              color: Colors.indigo),
          bodyText1:
              TextStyle(color: Colors.black54, fontWeight: FontWeight.w300),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

// use it with "Theme.of(context).myCustomColor"
extension CustomThemeDataExt on ThemeData {
  TextStyle get bodyLink {
    return TextStyle(color: primaryColor, fontWeight: FontWeight.w500);
  }
}
