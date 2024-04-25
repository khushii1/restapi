import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/client.dart';

class UserApi{
  static Future<List<User>> showData() async {

    print("data fetch");
    const url = 'https://randomuser.me/api/?results=10';
    var uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map((e) {
      print(e['picture']);
      final name =
      UserName(first: e['name']['first'], last: e['name']['last'], title: e['name']['title']);
      final pic=Picture(thumbnail: e['picture']['thumbnail'], medium: e['picture']['medium'], large: e['picture']['large']);
      return User(
        cell: e['cell'],
        email: e['email'],
        gender: e['gender'],
        nat: e['nat'],
        phone: e['phone'],
        name: name,
        pic:pic,
      );
    }).toList();
    return users;

  }
}