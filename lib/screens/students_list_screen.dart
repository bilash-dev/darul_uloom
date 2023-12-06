import 'package:flutter/material.dart';
import 'package:untitled/model/studentList_model.dart';
import 'package:untitled/services/api_services.dart';
import 'package:untitled/utility/shimmer_loading/loading_screen.dart';
import 'package:untitled/utility/shimmer_loading/shimmer_loading_page.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({Key? key}) : super(key: key);
  static const routeName ='/student-list';

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {

  List<StudentListModel> _listData = [];
   bool isLoading = false;

  @override
  void initState() {
    ApiService().studentList().then((value) {
      setState(() {
        _listData = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student List'),),
      body: _listData.isEmpty ?
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
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
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: _listData.length,
          // itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('SL')),
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Roll')),
                  DataColumn(label: Text('Reg No')),

                ],
                rows: _listData.map((user) {
                  return DataRow(
                    cells: [
                      DataCell(Text(user.id.toString())),
                      DataCell(Text(user.studentNameBangla.toString())),
                      DataCell(Text(user.rollNo.toString())),
                      DataCell(Text(user.regNo.toString())),
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
}
