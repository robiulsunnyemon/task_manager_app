import 'package:flutter/material.dart';
import 'package:taskmanagerapp/screens/add_new_task_screen.dart';
import 'package:taskmanagerapp/screens/auth_screen/login_screen.dart';
import 'package:taskmanagerapp/screens/auth_screen/update_profile_screen.dart';
import 'package:taskmanagerapp/screens/cancel_task_screen.dart';
import 'package:taskmanagerapp/screens/complete_task_screen.dart';
import 'package:taskmanagerapp/screens/home_screen.dart';
import 'package:taskmanagerapp/screens/progress_screen.dart';
import 'package:taskmanagerapp/screens/splash_screen.dart';
import 'package:taskmanagerapp/widgets/bottom_navigation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      home:  SplashScreen(),
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent),
          ),
          filled: true,
          fillColor: Colors.white70,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            padding: EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )
          )
        )

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

