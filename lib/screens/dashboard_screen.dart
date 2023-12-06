import 'package:flutter/material.dart';
import 'package:untitled/screens/login_screen.dart';
import 'package:untitled/screens/profile_screen.dart';
import 'package:untitled/screens/student_management_screen.dart';
import 'package:untitled/utility/shared_preference.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static const routeName = '/dashboard-screen';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Darul Uloom Islamia'),),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            InkWell(
              onTap: (){
               Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              child: const Card(
               color: Colors.white60,
               child: GridTile(
                 footer: Text('Profile'),
                 child: FlutterLogo(),
               ),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: const Card(
                color: Colors.white60,
                child: GridTile(
                  footer: Text('Employee Management'),
                  child: FlutterLogo(),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, StudentMgtScreen.routeName);
              },
              child: const Card(
                color: Colors.white60,
                child: GridTile(
                  footer: Text('Students Management'),
                  child: FlutterLogo(),
                ),
              ),
            ),
            const Card(
              color: Colors.white60,
              child: GridTile(
                footer: Text('Admission'),
                child: FlutterLogo(),
              ),
            ),
            const Card(
              color: Colors.white60,
              child: GridTile(
                footer: Text('Leave Application'),
                child: FlutterLogo(),
              ),
            ),
            const Card(
              color: Colors.white60,
              child: GridTile(
                footer: Text('Others'),
                child: FlutterLogo(),
              ),
            ),
            const Card(
              color: Colors.white60,
              child: GridTile(
                footer: Text('Name'),
                child: FlutterLogo(),
              ),
            ),
            const Card(
              color: Colors.white60,
              child: GridTile(
                footer: Text('Name'),
                child: FlutterLogo(),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: (){
          UserPreference().removeUser();
          Navigator.pushReplacementNamed(context, LoginScreen.routeName);

        },

        child: const Text('Logout', style: TextStyle(color: Colors.white),),
      ),

    );
  }
}
