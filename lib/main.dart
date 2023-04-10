import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens.dart/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // make the status bar transparent
        statusBarIconBrightness:
            Brightness.dark, // set the status bar icon color to dark
        systemNavigationBarColor:
            Colors.white, // set the navigation bar color to white
        systemNavigationBarIconBrightness:
            Brightness.dark, // set the navigation bar icon color to dark
      ),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomeScreen(),
    );
  }
}
