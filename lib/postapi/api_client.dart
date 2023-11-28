import 'dart:convert';

import 'package:flutter/material.dart';

import 'model/dummy.dart';
import 'package:http/http.dart'as http;


class Api_Client with ChangeNotifier{
  Future<Map<String,dynamic>?> DummyPostApi(String name, String salary, String age)async {
    try
    {
      Map<String, dynamic> body = {
        'name' : name,
        'salary' : salary,
        'age' : age,

      };
      String url ="https://dummy.restapiexample.com/api/v1/create";
      var response = await http.post(
          Uri.parse(url),
          body: body,
          headers: {'Content-Type': 'application/x-www-form-urlencoded'}

      );

      if(response.statusCode == 200)
      {
        return jsonDecode(response.body);
      }
      else
      {
        return jsonDecode(response.body);
      }
    }
    catch(e)
    {
      print("====create customer error====>${e.toString()}");
      //return jsonDecode(e.toString());

    }
    return null;
  }


}