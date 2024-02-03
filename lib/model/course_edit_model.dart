class CourseItemEdit {
  int? id;
  String? courseName;
  String? courseCode;
  String? departmentId;
  String? batchId;
  String? assignedById;
  int? status;
  String? createdBy;
  String? createdAt;
  String? updatedAt;

  CourseItemEdit({this.id,
    this.courseName,
    this.courseCode,
    this.departmentId,
    this.batchId,
    this.assignedById,
    this.status,
    this.createdBy,
    this.createdAt,
    this.updatedAt});

   CourseItemEdit.fromJson(Map<String, dynamic> json) {
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
  }
}