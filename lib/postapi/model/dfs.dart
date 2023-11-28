import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final TextEditingController _textFieldController = TextEditingController();
  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormField Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _textFieldController,
              decoration: InputDecoration(
                labelText: 'Enter a value',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final inputValue = _textFieldController.text;
                if (inputValue.isNotEmpty) {
                  setState(() {
                    message = "You entered: $inputValue";
                  });
                } else {
                  setState(() {
                    message = "Please enter a value";
                  });
                }
              },
              child: Text('Update Message'),
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
