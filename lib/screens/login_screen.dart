import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/model/user_model.dart';
import 'package:untitled/provider/auth_provider.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/provider/user_provider.dart';
import 'package:untitled/screens/dashboard_screen.dart';
import 'package:untitled/utility/http_exception.dart';
import '../utility/api.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  String _email = '';
  String _password = '';
  bool _obscuredText = true;

  void _toggle(){
    setState(() {
      _obscuredText = !_obscuredText;
    });
  }




  @override
  void initState() {
    // AuthProvider auth = Provider.of<AuthProvider>(context, listen:  false);
    super.initState();
  }
  


  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context, listen: false);

    Future<void> submit(email, password) async {
      if (_formKey.currentState!.validate()) {
        await auth.login(_emailController.text, _passController.text)
            .catchError((info){
              if(info.toString().contains('success')){

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    const DashboardScreen()));

                // User user = User();
                // var data = Provider.of<UserProvider>(context, listen: false).setUser(user);
                // print('ok:$data');
              }else if(info.toString().contains('message')){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login error')));
              }
        });
      }
    }



    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Darul Uloom Islamia')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Enter Email Number";
                }else{
                  return null;
                }
              },
              onSaved: (value) {
                _emailController.text = value!.trim();

              },
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: _passController,
              obscureText: _obscuredText,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(_obscuredText? Icons.visibility_off : Icons.visibility),
                  onPressed: _toggle,
                ),
                labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Enter Password";
                }else{
                  return null;
                }
              },
              onSaved: (value) {
                _passController.text = value!.trim();
              },
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  submit(_emailController.text, _passController.text);
                  // print(_emailController.text);
                  // print(_passController.text);
                  // if(_formKey.currentState!.validate()){
                  //  await auth.login(_emailController.text, _passController.text);
                  // }

                },
                child: Text('Login')),
          ],
          ),
        ),
      ),
    );
  }
}
