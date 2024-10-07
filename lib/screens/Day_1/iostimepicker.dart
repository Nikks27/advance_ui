import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iosTimePickerScreen extends StatefulWidget {
  const iosTimePickerScreen({super.key});

  @override
  State<iosTimePickerScreen> createState() => _iosTimePickerScreenState();
}

TextEditingController _timeController = TextEditingController();

class _iosTimePickerScreenState extends State<iosTimePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text('iosTimePicker'),
      ),
      body: SizedBox(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              ' ${_timeController.text}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 50,
            ),
            CupertinoTimerPicker(
              onTimerDurationChanged: (value) {
                _timePicker(value);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _timePicker(Duration value) {
    timeIos = value;

    if (timeIos != null) {
      setState(() {
        _timeController.text =
            timeIos.toString().split('.').first.padLeft(8, "0");
      });
    }
  }
}

Duration? timeIos;
