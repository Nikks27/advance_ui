
import 'package:advance_ui/screens/Day_1/Dailog.dart';
import 'package:advance_ui/screens/Day_1/DatePicker.dart';
import 'package:advance_ui/screens/Day_1/Date_Picker2.dart';
import 'package:advance_ui/screens/Day_1/ios_dailog.dart';
import 'package:advance_ui/screens/Day_1/iosdatepicker.dart';
import 'package:advance_ui/screens/Day_1/iostimepicker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => DailogScreen(),
        '/timepicker': (context) => TimepickerScreen(),
        '/date': (context) => DateScreen(),
        '/iosdailog': (context) => iosDailogScreen(),
        '/iosdatepicker': (context) => iosDatePickerScreen(),
        '/iostimepicker': (context) => iosTimePickerScreen(),
      },
    );
  }
}

