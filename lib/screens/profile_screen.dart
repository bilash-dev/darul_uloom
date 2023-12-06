import 'package:flutter/material.dart';

import '../utility/shared_preference.dart';
import 'login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName ='/profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),backgroundColor: Colors.blue),
      body: Column(
        children: [

        ],
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
