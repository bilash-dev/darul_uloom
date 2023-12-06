class User {
  int? id;
  String? name;
  String? email;
  String? designationId;
  String? departmentId;
  String? personalPhoneNo;
  String? alternativePhoneNo;
  String? parentPhoneNo;
  String? homePhoneNo;
  String? jobtype;
  String? dateOfBirth;
  String? dateOfJoin;
  String? nidNo;
  String? profilePhoto;
  int? status;
  String? role;
  // Null? permissions;
  int? supervisedBy;
  // Null? weeklyWorkingHours;
  String? createdBy;
  String? merit;
  // Null? createdAt;
  String? updatedAt;

  User(
  {this.id,
  this.name,
  this.email,
  this.designationId,
  this.departmentId,
  this.personalPhoneNo,
  this.alternativePhoneNo,
  this.parentPhoneNo,
  this.homePhoneNo,
  this.jobtype,
  this.dateOfBirth,
  this.dateOfJoin,
  this.nidNo,
  this.profilePhoto,
  this.status,
  this.role,
  // this.permissions,
  this.supervisedBy,
  // this.weeklyWorkingHours,
  this.createdBy,
  this.merit,
  // this.createdAt,
  this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    designationId = json['designation_id'];
    departmentId = json['department_id'];
    personalPhoneNo = json['personal_phone_no'];
    alternativePhoneNo = json['alternative_phone_no'];
    parentPhoneNo = json['parent_phone_no'];
    homePhoneNo = json['home_phone_no'];
    jobtype = json['jobtype'];
    dateOfBirth = json['date_of_birth'];
    dateOfJoin = json['date_of_join'];
    nidNo = json['nid_no'];
    profilePhoto = json['profile_photo'];
    status = json['status'];
    role = json['role'];
    // permissions = json['permissions'];
    supervisedBy = json['supervised_by'];
    // weeklyWorkingHours = json['weekly_working_hours'];
    createdBy = json['created_by'];
    merit = json['merit'];
    // createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}