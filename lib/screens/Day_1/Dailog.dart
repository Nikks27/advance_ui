import 'package:flutter/material.dart';

class DailogScreen extends StatefulWidget {
  const DailogScreen({super.key});

  @override
  State<DailogScreen> createState() => _DailogScreenState();
}
String _selectedOption = 'Option 1';

class _DailogScreenState extends State<DailogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dailog'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/timepicker');
          }, icon: Icon(Icons.arrow_forward_outlined))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Text('Phone RingTone'),
                      content: Container(
                        height: 350,
                        width: 400,
                        child: Column(
                          children: [
                            ListTile(
                              title:  Text('None'),
                              leading: Radio<String>(
                                value: 'Option 1',
                                groupValue: _selectedOption,
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: Text('Callisto'),
                              leading: Radio<String>(
                                value: 'Option 2',
                                groupValue: _selectedOption,
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title:  Text(' GardeMade'),
                              leading: Radio<String>(
                                value: 'Option 3',
                                groupValue: _selectedOption,
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title:  Text('Luna'),
                              leading: Radio<String>(
                                value: 'Option 4',
                                groupValue: _selectedOption,
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title:  Text('Jovi'),
                              leading: Radio<String>(
                                value: 'Option 5',
                                groupValue: _selectedOption,
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                             SizedBox(height: 20),
                            Text(
                              'Selected: $_selectedOption',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text('No',style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text('Yes',style: TextStyle(color: Colors.black),)),
                      ],
                    );
                  },);
                },
                child: Center(
                    child: Text(
                      'Click here',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}