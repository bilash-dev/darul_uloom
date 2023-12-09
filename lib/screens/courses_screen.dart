import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/model/course_model.dart';
import 'package:untitled/services/api_services.dart';

import '../utility/shimmer_loading/loading_screen.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);
  static const routeName = '/courses';

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {

  List<CourseModel> _modelList = [];

  @override
  void initState() {
    ApiService().courseList().then((value) {
      setState(() {
        _modelList = value!;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Courses'), backgroundColor: Colors.blue,),
      body: _modelList.isEmpty ?
          Padding(
              padding: EdgeInsets.all(4.4),
              child:
              ListView.builder(
                itemCount: 8,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      loadingShimmer(),
                      const SizedBox(height: 10,)
                    ],
                  );
                },
              ),
            ):
          Padding(
              padding: const EdgeInsets.all(2.7),
             child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                // itemCount: _modelList.length,
                itemCount: 1,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.11),
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('Dept.')),
                        // DataColumn(label: Text('Batch')),
                        DataColumn(label: Text('C. Name')),
                        DataColumn(label: Text('C. Code')),
                        DataColumn(label: Text('Actions')),

                      ],
                      rows: _modelList.map((course) {
                        return DataRow(
                          cells: [
                            DataCell(Text(course.department![0].departmentName.toString())),
                            // DataCell(Text(course.batch![0].batchName.toString())),
                            DataCell(Text(course.courseName.toString())),
                            DataCell(Text(course.courseCode.toString())),
                            DataCell(
                              PopupMenuButton<String>(
                                itemBuilder: (BuildContext context) {
                                  return [
                                    PopupMenuItem<String>(
                                      value: 'edit',
                                      child: Text('Edit'),
                                    ),
                                    PopupMenuItem<String>(
                                      value: 'delete',
                                      child: Text('Delete'),
                                    ),
                                  ];
                                },
                                onSelected: (String value) {
                                  _handleMenuItem(value, index);
                                },
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  );
                },
              ),
          )
    );
  }
  void _handleMenuItem(String value, int itemIndex) {
    // Handle the selected menu item
    print('Selected item: $value for Item $itemIndex');
    // You can implement your own logic here, such as editing or deleting the corresponding item
  }
}
