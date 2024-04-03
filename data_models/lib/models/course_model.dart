import 'content_model.dart';
import 'batch_model.dart';

class Course {
  int dateTime;
  dynamic lastReadContentStatus;
  int enrolledDate;
  Map<String, dynamic> lrcProgressDetails;
  String contentId;
  dynamic description;
  String courseLogoUrl;
  String batchId;
  Content content;
  Map<String, dynamic> contentStatus;
  dynamic lastContentAccessTime;
  dynamic certstatus;
  dynamic lastReadContentId;
  String courseId;
  String collectionId;
  dynamic oldEnrolledDate;
  String addedBy;
  Batch batch;
  bool active;
  String userId;
  int completionPercentage;
  List<IssuedCertificate> issuedCertificates;
  String courseName;
  List<dynamic> certificates;
  dynamic completedOn;
  int leafNodesCount;
  int progress;
  int status;

  Course({
    this.dateTime,
    this.lastReadContentStatus,
    this.enrolledDate,
    this.lrcProgressDetails,
    this.contentId,
    this.description,
    this.courseLogoUrl,
    this.batchId,
    this.content,
    this.contentStatus,
    this.lastContentAccessTime,
    this.certstatus,
    this.lastReadContentId,
    this.courseId,
    this.collectionId,
    this.oldEnrolledDate,
    this.addedBy,
    this.batch,
    this.active,
    this.userId,
    this.completionPercentage,
    this.issuedCertificates,
    this.courseName,
    this.certificates,
    this.completedOn,
    this.leafNodesCount,
    this.progress,
    this.status,
  });
}

class IssuedCertificate {
  final String identifier;
  final String lastIssuedOn;
  final String name;
  final String token;

  IssuedCertificate({
    this.identifier,
    this.lastIssuedOn,
    this.name,
    this.token,
  });

  factory IssuedCertificate.fromJson(Map<String, dynamic> json) {
    return IssuedCertificate(
      identifier: json['identifier'],
      lastIssuedOn: json['lastIssuedOn'],
      name: json['name'],
      token: json['token'],
    );
  }
}



// Competency class for competencies_v5 field

