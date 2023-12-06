import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/model/studentList_model.dart';
import 'package:untitled/utility/api.dart';
import 'package:untitled/utility/shared_preference.dart';

class ApiService{
  static var client = http.Client();
  String _token = GetStorage().read('token');


  Future studentList() async{

    final url = '${Api.baseUrl}show';
    // final url = '${Api.baseUrl}api/api/admission/search-student/20000010000123??token=$_token';
    // print(url);
    // final url = '${Api.baseUrl}api/student/show';

    var response = await http.get(Uri.parse(url),
      headers: {
        // 'Authorization': _token,
        'Content-Type': 'application/json',
      }
    );

    var responseData = json.decode(response.body);

    List<dynamic> listData = responseData['data'];

    List<StudentListModel> modelData =
        listData.map((element) =>StudentListModel.fromJson(element)).toList();

    return modelData;
  }


}