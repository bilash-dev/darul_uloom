import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';

class UserPreference{

  Future saveUser(User user) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('id', user.id!);
    prefs.setString('name', user.name!);
    prefs.setString('email', user.email!);
    prefs.setString('designationId', user.designationId!);
    prefs.setString('departmentId', user.departmentId!);
    prefs.setString('personalPhoneNo', user.personalPhoneNo!);
    prefs.setString('alternativePhoneNo', user.alternativePhoneNo!);
    prefs.setString('parentPhoneNo', user.parentPhoneNo!);
    prefs.setString('homePhoneNo', user.homePhoneNo!);
    prefs.setString('jobtype', user.jobtype!);
    prefs.setString('dateOfJoin', user.dateOfJoin!);
    prefs.setString('nidNo', user.nidNo!);
    prefs.setString('profilePhoto', user.profilePhoto!);
    prefs.setInt('status', user.status!);
    prefs.setString('role', user.role!);
    prefs.setInt('supervisedBy', user.supervisedBy!);
    prefs.setString('createdBy', user.createdBy!);
    prefs.setString('merit', user.merit!);
    prefs.setString('updatedAt', user.updatedAt!);

    return prefs.commit();

  }

  Future<User> getUser() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    int? id = prefs.getInt('id');
    String? name = prefs.getString('name');
    String? email = prefs.getString('email');
    String? designationId = prefs.getString('designationId');
    String? departmentId = prefs.getString('departmentId');
    String? personalPhoneNo = prefs.getString('personalPhoneNo');
    String? alternativePhoneNo = prefs.getString('alternativePhoneNo');
    String? parentPhoneNo = prefs.getString('parentPhoneNo');
    String? homePhoneNo = prefs.getString('homePhoneNo');
    String? jobtype = prefs.getString('jobtype');
    String? dateOfJoin = prefs.getString('dateOfJoin');
    String? nidNo = prefs.getString('nidNo');
    String? profilePhoto = prefs.getString('profilePhoto');
    int? status = prefs.getInt('status');
    String? role = prefs.getString('role');
    int? supervisedBy = prefs.getInt('supervisedBy');
    String? createdBy = prefs.getString('createdBy');
    String? updatedAt = prefs.getString('updatedAt');

    return User (
      id: id,
      name: name,
      email: email,
      designationId: designationId,
      departmentId: departmentId,
      personalPhoneNo: personalPhoneNo,
      alternativePhoneNo: alternativePhoneNo,
      parentPhoneNo: parentPhoneNo,
      homePhoneNo: homePhoneNo,
      jobtype: jobtype,
      dateOfJoin: dateOfJoin,
      nidNo: nidNo,
      profilePhoto: profilePhoto,
      status: status,
      role: role,
      supervisedBy: supervisedBy,
      createdBy: createdBy,
      updatedAt: updatedAt,

    );
  }

  void removeUser() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('id');
    prefs.remove('name');
    prefs.remove('email');
    prefs.remove('designationId');
    prefs.remove('departmentId');
    prefs.remove('personalPhoneNo');
    prefs.remove('alternativePhoneNo');
    prefs.remove('parentPhoneNo');
    prefs.remove('homePhoneNo');
    prefs.remove('jobtype');
    prefs.remove('dateOfJoin');
    prefs.remove('nidNo');
    prefs.remove('profilePhoto');
    prefs.remove('status');
    prefs.remove('role');
    prefs.remove('supervisedBy');
    prefs.remove('createdBy');
    prefs.remove('updatedAt');

    }
}