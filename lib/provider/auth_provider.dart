import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:untitled/provider/user_provider.dart';
import 'package:untitled/utility/api.dart';
import 'package:untitled/utility/http_exception.dart';
import 'package:untitled/utility/shared_preference.dart';

import '../model/user_model.dart';

class AuthProvider with ChangeNotifier{

  String _token ='';
  final saveData = GetStorage();


  Future login(email, password) async {
    final loginUrl = '${Api.baseUrl}api/login';
    // final loginUrl = '${Api.baseUrl}auth/login';
    // print(loginUrl);

    final response = await http.post(Uri.parse(loginUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'email': email,
        'password': password
      }),
    );

    final responseData = json.decode(response.body);

    if(response.statusCode == 201) {
      _token = responseData['token'];

      //token save to get storage
      saveData.write('token', _token);

      //user data send to user model
      User authUser = User.fromJson(responseData['user']);

      //user model send to shared preference
      UserPreference().saveUser(authUser);

      notifyListeners();

      throw HttpException('success');
    }else{
      if(response.statusCode == 203){
        throw HttpException('message');
      }
    }
  }


  //student list show
  Future studentList() async{

    // final url = '${Api.baseUrl}api/student/show?token=$_token';
    final url = '${Api.baseUrl}api/api/admission/search-student/20000010000123';
    print(url);

    var response = await http.get(Uri.parse(url));
    // var responseData = json.decode(json.encode(response.body));
    var responseData = json.decode(response.body);
    print(responseData);
  }

}