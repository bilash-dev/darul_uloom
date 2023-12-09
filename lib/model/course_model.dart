class CourseModel {
  int? id;
  String? courseName;
  String? courseCode;
  String? departmentId;
  String? batchId;
  int? assignedById;
  int? status;
  String? createdBy;
  String? createdAt;
  String? updatedAt;
  List<Department>? department;
  List<Batch>? batch;

  CourseModel(
      {this.id,
        this.courseName,
        this.courseCode,
        this.departmentId,
        this.batchId,
        this.assignedById,
        this.status,
        this.createdBy,
        this.createdAt,
        this.updatedAt,
        this.department,
        this.batch});

  CourseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courseName = json['course_name'];
    courseCode = json['course_code'];
    departmentId = json['department_id'];
    batchId = json['batch_id'];
    assignedById = json['assigned_by_id'];
    status = json['status'];
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['department'] != null) {
      department = <Department>[];
      json['department'].forEach((v) {
        department!.add(new Department.fromJson(v));
      });
    }
    if (json['batch'] != null) {
      batch = <Batch>[];
      json['batch'].forEach((v) {
        batch!.add(new Batch.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['course_name'] = this.courseName;
    data['course_code'] = this.courseCode;
    data['department_id'] = this.departmentId;
    data['batch_id'] = this.batchId;
    data['assigned_by_id'] = this.assignedById;
    data['status'] = this.status;
    data['created_by'] = this.createdBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.department != null) {
      data['department'] = this.department!.map((v) => v.toJson()).toList();
    }
    if (this.batch != null) {
      data['batch'] = this.batch!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Department {
  int? id;
  String? departmentName;

  Department({this.id, this.departmentName});

  Department.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    departmentName = json['department_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['department_name'] = this.departmentName;
    return data;
  }
}

class Batch {
  int? id;
  String? batchName;

  Batch({this.id, this.batchName});

  Batch.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    batchName = json['batch_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['batch_name'] = this.batchName;
    return data;
  }
}