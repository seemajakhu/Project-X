import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'api_client.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  TextEditingController nameController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController ageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller:nameController ,
            decoration: InputDecoration(
              hintText: "Enter Name",
            ),
          ), TextFormField(
            controller:salaryController ,
            decoration: InputDecoration(
              hintText: "Enter Salary",
            ),
          ), TextFormField(
            controller:ageController ,
            decoration: InputDecoration(
              hintText: "Enter Age",
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final response = await Api_Client().DummyPostApi(nameController.text.trim(), salaryController.text.trim(), ageController.text.trim());
              if (response != null) {
                print(response);

                Fluttertoast.showToast(msg: response["message"]);

              } else {

                print("API call failed");
              }


            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}
