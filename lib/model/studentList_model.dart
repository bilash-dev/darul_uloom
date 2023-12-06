class StudentListModel {
  int? id;
  String? departmentId;
  String? batchId;
  String? shiftId;
  String? groupId;
  String? admFrmSl;
  int? rollNo;
  String? regNo;
  String? studentNameBangla;
  String? studentNameEnglish;
  String? bloodGroup;
  String? gender;
  String? dob;
  String? stdBirthNo;
  String? permanentAdd;
  String? mailingAdd;
  String? sPhoto;
  String? birthCertificatePhoto;
  String? fName;
  String? fCellno1;
  String? fCellno2;
  String? fOccu;
  String? fNidNo;
  String? fPhoto;
  String? mName;
  String? mCellno1;
  String? mCellno2;
  String? mOccu;
  String? mNidNo;
  String? gName;
  String? gCellno1;
  String? gCellno2;
  String? gOccu;
  String? gNidNo;
  String? guardianAdd;
  String? gPhoto;
  String? previousInstitute;
  String? lastProgramOfStudy;
  String? nameOfExaminer;
  String? remarkOfExaminer;
  String? instituteAdd;
  int? entryBy;
  int? status;
  String? entryDate;
  String? entryIpAddress;
  String? createdAt;
  String? updatedAt;
  List<Department>? department;

  StudentListModel({this.id,
    this.departmentId,
    this.batchId,
    this.shiftId,
    this.groupId,
    this.admFrmSl,
    this.rollNo,
    this.regNo,
    this.studentNameBangla,
    this.studentNameEnglish,
    this.bloodGroup,
    this.gender,
    this.dob,
    this.stdBirthNo,
    this.permanentAdd,
    this.mailingAdd,
    this.sPhoto,
    this.birthCertificatePhoto,
    this.fName,
    this.fCellno1,
    this.fCellno2,
    this.fOccu,
    this.fNidNo,
    this.fPhoto,
    this.mName,
    this.mCellno1,
    this.mCellno2,
    this.mOccu,
    this.mNidNo,
    this.gName,
    this.gCellno1,
    this.gCellno2,
    this.gOccu,
    this.gNidNo,
    this.guardianAdd,
    this.gPhoto,
    this.previousInstitute,
    this.lastProgramOfStudy,
    this.nameOfExaminer,
    this.remarkOfExaminer,
    this.instituteAdd,
    this.entryBy,
    this.status,
    this.entryDate,
    this.entryIpAddress,
    this.createdAt,
    this.updatedAt,
    this.department});

  StudentListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    departmentId = json['department_id'];
    batchId = json['batch_id'];
    shiftId = json['shift_id'];
    groupId = json['group_id'];
    admFrmSl = json['adm_frm_sl'];
    rollNo = json['roll_no'];
    regNo = json['reg_no'];
    studentNameBangla = json['student_name_bangla'];
    studentNameEnglish = json['student_name_english'];
    bloodGroup = json['blood_group'];
    gender = json['gender'];
    dob = json['dob'];
    stdBirthNo = json['std_birth_no'];
    permanentAdd = json['permanent_add'];
    mailingAdd = json['mailing_add'];
    sPhoto = json['s_photo'];
    birthCertificatePhoto = json['birth_certificate_photo'];
    fName = json['f_name'];
    fCellno1 = json['f_cellno1'];
    fCellno2 = json['f_cellno2'];
    fOccu = json['f_occu'];
    fNidNo = json['f_nid_no'];
    fPhoto = json['f_photo'];
    mName = json['m_name'];
    mCellno1 = json['m_cellno1'];
    mCellno2 = json['m_cellno2'];
    mOccu = json['m_occu'];
    mNidNo = json['m_nid_no'];
    gName = json['g_name'];
    gCellno1 = json['g_cellno1'];
    gCellno2 = json['g_cellno2'];
    gOccu = json['g_occu'];
    gNidNo = json['g_nid_no'];
    guardianAdd = json['guardian_add'];
    gPhoto = json['g_photo'];
    previousInstitute = json['previous_institute'];
    lastProgramOfStudy = json['last_program_of_study'];
    nameOfExaminer = json['name_of_examiner'];
    remarkOfExaminer = json['remark_of_examiner'];
    instituteAdd = json['institute_add'];
    entryBy = json['entry_by'];
    status = json['status'];
    entryDate = json['entry_date'];
    entryIpAddress = json['entry_ip_address'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    department:
    List<Department>.from(json["department"].map((x) => Department.fromJson(x)));
  }
}

class Department {
  int? id;
  String? departmentName;
  String? status;
  String? createdBy;
  String? createdAt;
  String? updatedAt;

  Department(
      {this.id,
        this.departmentName,
        this.status,
        this.createdBy,
        this.createdAt,
        this.updatedAt});

  factory Department.fromJson(Map<String, dynamic> json) => Department(
    id: json["id"],
    departmentName: json["department_name"],
    status: json["status"],
    createdBy: json["created_by"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['department_name'] = this.departmentName;
    data['status'] = this.status;
    data['created_by'] = this.createdBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
