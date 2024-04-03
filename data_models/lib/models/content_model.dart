import 'batch_model.dart';

class Content {
  Map<String, dynamic> trackable;
  String identifier;
  String firstChildId;
  List<String> competencies;
  String channel;
  List<String> organisation;
  String mimeType;
  String posterImage;
  int version;
  String courseCategory;
  int pkgVersion;
  String objectType;
  String duration;
  String license;
  List<Batch> batches;
  String appIcon;
  String primaryCategory;
  String createdBy;
  int leafNodesCount;
  String name;
  double avgRating;
  String contentType;
  String status;
  String programDuration;

  Content({
    this.trackable,
    this.identifier,
    this.firstChildId,
    this.channel,
    this.organisation,
    this.mimeType,
    this.posterImage,
    this.version,
    this.courseCategory,
    this.pkgVersion,
    this.objectType,
    this.duration,
    this.license,
    this.batches,
    this.appIcon,
    this.primaryCategory,
    this.createdBy,
    this.leafNodesCount,
    this.name,
    this.avgRating,
    this.contentType,
    this.status,
  });
}
