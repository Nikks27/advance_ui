import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iosDatePickerScreen extends StatefulWidget {
  const iosDatePickerScreen({super.key});

  @override
  State<iosDatePickerScreen> createState() => _iosDatePickerScreenState();
}

class _iosDatePickerScreenState extends State<iosDatePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop('/da');
        }, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text('IosDatePicker'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/iostimepicker');
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: SizedBox(
        height: 500,
        child:CupertinoDatePicker(
          mode: CupertinoDatePickerMode.date,

          onDateTimeChanged: (DateTime value) {

          },),
      ),
    );
  }
}
