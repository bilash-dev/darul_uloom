import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/auth_provider.dart';
import 'package:untitled/screens/students_list_screen.dart';
import 'package:untitled/services/api_services.dart';
import 'package:untitled/utility/button_widget.dart';

class StudentMgtScreen extends StatefulWidget {
  const StudentMgtScreen({Key? key}) : super(key: key);
  static const routeName ='/student-mgt';

  @override
  State<StudentMgtScreen> createState() => _StudentMgtScreenState();
}

class _StudentMgtScreenState extends State<StudentMgtScreen> {
  @override
  Widget build(BuildContext context) {
    // AuthProvider auth = Provider.of(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('Student Management'),backgroundColor: Colors.blue),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: InkWell(
                child: MyButton(
                  onTap: (){
                    Navigator.pushNamed(context, StudentListScreen.routeName);
                  },
                  buttonText: 'Students',
                  iconData: Icons.person,
                ),
              )
            ),
        ],
      ),
    );
  }
}
