import 'package:first_ui_project/views/pages/home_page.dart';
import 'package:first_ui_project/views/widgets/custom_bottom_navbar.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: const CustomBottomNavBar(),
    );
  }
}
