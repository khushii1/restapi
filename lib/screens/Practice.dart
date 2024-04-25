import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restapi/services/userapi.dart';

import '../models/client.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final email = user.email;
            final phone = user.phone;
           final name = user.name.first;
           final pic=user.pic?.thumbnail;
           if(pic != null){
             return ListTile(

               leading: ClipRRect(borderRadius: BorderRadius.circular(100),
                 child: Image.network(pic),),
               title: Text(phone),
               subtitle: Text(email),
             );
           } else{
             return ListTile(
               title: Text(phone),
               subtitle: Text(email),
             );
           }

          }),


    );
  }
Future<void> loadData ()async{
   final response= await UserApi.showData();
  setState(() {
    users=response;
  });

}

}
