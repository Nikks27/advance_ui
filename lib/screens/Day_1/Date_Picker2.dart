import 'package:flutter/material.dart';

class TimepickerScreen extends StatefulWidget {
  const TimepickerScreen({super.key});

  @override
  State<TimepickerScreen> createState() => _TimepickerScreenState();
}

class _TimepickerScreenState extends State<TimepickerScreen> {
  TextEditingController _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text('Time Picker'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/date');
          }, icon: Icon(Icons.arrow_forward_outlined))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 4),
              ),
              child: Center(
                  child: Text(
                    _timeController.text.isEmpty
                        ? "No Time Selected"
                        : _timeController.text,
                    style:  TextStyle(color: Colors.black),
                  )),
            ),
          ),
           SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade500,
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                onTap: () {
                  _timePicker();
                },
                child: const Center(
                    child: Text(
                      'TIME NOW',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _timePicker() async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (time != null) {
      setState(() {
        _timeController.text = time.format(context);
      });
    }
  }
}