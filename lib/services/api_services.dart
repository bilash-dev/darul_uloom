import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/model/course_model.dart';
import 'package:untitled/model/studentList_model.dart';
import 'package:untitled/utility/api.dart';
import 'package:untitled/utility/shared_preference.dart';

class ApiService{
  static var client = http.Client();
  String _token = GetStorage().read('token');

//student list show method
  Future studentList() async{

    final url = '${Api.baseUrl}show';
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

  //course list show method
Future<List<CourseModel>?> courseList() async {
  final url = "${Api.baseUrl}course/show";
  try {
    var response = await http.get(Uri.parse(url),);
    final responseData = json.decode(response.body);

    if(response.statusCode == 200){

      List<CourseModel> courseModel=
      List<CourseModel>.from(responseData.map((course) => CourseModel.fromJson(course)));

      print(courseModel[1].courseName);
      return courseModel;
    }else{
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error parsing response: $e');
  }
}


}