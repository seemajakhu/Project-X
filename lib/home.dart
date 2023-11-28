import 'package:api/apiclient/api.dart';
import 'package:flutter/material.dart';

import 'model/getnotification.dart';
import 'model/getnotificationdata.dart';
import 'model/userdata.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //GetNotification? getNotification;
  List<GetNotificationData> notificationsList =[];

  List<UserData> userData =[];

  @override
  void initState() {
   // getuser();
    getNotifications();
    super.initState();
  }

  void getuser()async{
    List<UserData> result = await ApiClient().getAllUserApi();
   setState(() {
     userData=result;
   });
    print("=======result========$result");
  }

  void getNotifications()async{
    String? user_token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImV2VG9rZW4iOnsiYWNjZXNzX3Rva2VuIjoiVkQwUmNlRHkzZk4yc0w0S29CVkZyOXFYSnlvbWVwc1VEZUx6NXBEZiJ9LCJhY3RpdmF0ZWRfa2V5IjoiZmI2YWFiMmMtOWVjNS00Y2Q5LTg2YjItZjRhNmM2NjZjZjkwIiwidXNlcl9pZCI6IjY0OTAyNjEzMzU0OWFjMDYxYTYzN2E5MyIsImV2VXNlcklkIjoiNjQ5MDI2MTJhYzE4OWYwM2Q4ZGNkNWM4In0sImlhdCI6MTY5NjQyMjExMCwiZXhwIjoxNjk5MDE0MTEwfQ.FggcrtYclJpdbJxLAKfyIi6C2HA5Sb4InA-aXCVI-t4";
    GetNotification? notificationResult = await ApiClient().getUserNotification(user_token);
    if(notificationResult!.success){
      setState(() {
        //notificationsList.addAll(notificationResult.data );
        notificationsList= notificationResult.data;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          separatorBuilder: (context, position)=>Divider(color: Colors.black26,),
          itemCount: notificationsList.length,
          itemBuilder: (context,position){
            return Column(
              children: [
                Text(notificationsList[0].id),
                Text(notificationsList[position].title),
                Text(notificationsList[position].description!),

               // Text(userData[index].name.toString()),
               // Text(userData[index].username.toString()),
               // Text(userData[index].email.toString()),
              ],
            );
          }
        ),
      ),
    );
  }
}
