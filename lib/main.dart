
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/pages/home_page.dart';

void main() async{

  // intialize the hives
  await Hive.initFlutter();

  //open a box
  // var box = await Hive.openBox('Mybox');



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme:  ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
  useMaterial3: true, // Enable Material 3 styling (optional)

  primaryColor: const Color.fromARGB(255, 20, 130, 209),

  scaffoldBackgroundColor: Colors.white,
  floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: const Color.fromARGB(255, 20, 130, 209),
  foregroundColor: Color.fromARGB(255, 255, 255, 255),
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 22, 100, 164),       // Button background color
      foregroundColor: const Color.fromARGB(255, 255, 255, 255),      // Text/Icon color
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),

  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.all(Colors.blue),
    checkColor: MaterialStateProperty.all(Colors.white),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  ),

  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14),
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  ),
),
    );
  }
}