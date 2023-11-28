
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;

import '../config/config.dart';
import '../model/getnotification.dart';
import '../model/userdata.dart';

class ApiClient with ChangeNotifier{


//========fetch data into list
  Future<List<UserData>>getAllUserApi()async {

    List<UserData> userDetailsList = [];
    var response = await http.get(Uri.parse(Config().BASE_URL));


    List<dynamic> mList =json.decode(response.body);
    userDetailsList = mList.map((e) => UserData.fromJson(e as Map<String, dynamic>)).toList();

    return userDetailsList;

  }
//============fetch data into notificationsList.addAll(notificationResult.data );
  Future<GetNotification?> getUserNotification(String userToken)async
  {
    try
    {
      var response = await http.get(Uri.parse(Config().BASE_URL+"notification/list"),
          headers: {
            "token": userToken
          });
      print("get user notification result==>${response.body}");
      if(response.statusCode == 200)
      {
        GetNotification result = GetNotification.fromJson(jsonDecode(response.body));
        return result;
      }
      else{
        GetNotification result = GetNotification.fromJson(jsonDecode(response.body));
        return result;
      }

    }
    catch(e)
    {
      print("========get user notification error====${e.toString()}");
    }
    return null;
  }


}