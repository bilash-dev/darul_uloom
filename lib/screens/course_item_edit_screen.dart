import 'package:flutter/material.dart';
import 'package:untitled/services/api_services.dart';

import '../model/course_edit_model.dart';

class CourseItemEditScreen extends StatefulWidget {
   var receivedId;
   CourseItemEditScreen(this.receivedId);
   //  CourseItemEditScreen(this.receivedId);
  static const routeName ='/course-edit';

  @override
  State<CourseItemEditScreen> createState() => _CourseItemEditScreenState();
}

class _CourseItemEditScreenState extends State<CourseItemEditScreen> {

   late Future<CourseItemEdit> _futureItem;

   CourseItemEdit item = CourseItemEdit();



  // get receivedId => item.id;

  // get id => id;

  // get receivedId => id;

  @override
  void initState() {
    _futureItem = ApiService().fetchCourseItem(9);
    // print(_futureItem);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Course Edit'),),
      body: ElevatedButton(
        onPressed: (){
          ApiService().fetchCourseItem(9);
        },
        child: Text('yes'),
      ),
    );
  }
}
