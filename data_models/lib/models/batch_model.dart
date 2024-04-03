class Batch {
  final List<String> createdFor;
  final BatchAttributes batchAttributes;
  final String endDate;
  final String name;
  final String enrollmentType;
  final String batchId;
  final String enrollmentEndDate;
  final String startDate;
  final int status;

  Batch({
    this.createdFor,
    this.batchAttributes,
    this.endDate,
    this.name,
    this.enrollmentType,
    this.batchId,
    this.enrollmentEndDate,
    this.startDate,
    this.status,
  });

  factory Batch.fromJson(Map<String, dynamic> json) {
    return Batch(
      createdFor: List<String>.from(json['createdFor']),
      batchAttributes: BatchAttributes.fromJson(json['batchAttributes']),
      endDate: json['endDate'],
      name: json['name'],
      enrollmentType: json['enrollmentType'],
      batchId: json['batchId'],
      enrollmentEndDate: json['enrollmentEndDate'],
      startDate: json['startDate'],
      status: json['status'],
    );
  }
}

class BatchAttributes {
  final bool enableQR;
  final String latlong;
  final String batchLocationDetails;
  final String currentBatchSize;
  final List<SessionDetailsV2> sessionDetailsV2;

  BatchAttributes({
    this.enableQR,
    this.latlong,
    this.batchLocationDetails,
    this.currentBatchSize,
    this.sessionDetailsV2,
  });

  factory BatchAttributes.fromJson(Map<String, dynamic> json) {
    return BatchAttributes(
      enableQR: json['enableQR'],
      latlong: json['latlong'],
      batchLocationDetails: json['batchLocationDetails'],
      currentBatchSize: json['currentBatchSize'],
      sessionDetailsV2: List<SessionDetailsV2>.from(
          json['sessionDetails_v2'].map((x) => SessionDetailsV2.fromJson(x))),
    );
  }
}

class SessionDetailsV2 {
  final List<AttachLink> attachLinks;
  final List<String> facilatorIDs;
  final List<SessionHandout> sessionHandouts;
  final String sessionType;
  final String description;
  final List<FacilatorDetail> facilatorDetails;
  final String startTime;
  final String endTime;
  final String sessionId;
  final String sessionDuration;
  final String title;
  final String startDate;

  SessionDetailsV2({
    this.attachLinks,
    this.facilatorIDs,
    this.sessionHandouts,
    this.sessionType,
    this.description,
    this.facilatorDetails,
    this.startTime,
    this.endTime,
    this.sessionId,
    this.sessionDuration,
    this.title,
    this.startDate,
  });

  factory SessionDetailsV2.fromJson(Map<String, dynamic> json) {
    return SessionDetailsV2(
      attachLinks: List<AttachLink>.from(
          json['attachLinks'].map((x) => AttachLink.fromJson(x))),
      facilatorIDs: List<String>.from(json['facilatorIDs']),
      sessionHandouts: List<SessionHandout>.from(
          json['sessionHandouts'].map((x) => SessionHandout.fromJson(x))),
      sessionType: json['sessionType'],
      description: json['description'],
      facilatorDetails: List<FacilatorDetail>.from(
          json['facilatorDetails'].map((x) => FacilatorDetail.fromJson(x))),
      startTime: json['startTime'],
      endTime: json['endTime'],
      sessionId: json['sessionId'],
      sessionDuration: json['sessionDuration'],
      title: json['title'],
      startDate: json['startDate'],
    );
  }
}

class AttachLink {
  final String title;
  final String url;

  AttachLink({
    this.title,
    this.url,
  });

  factory AttachLink.fromJson(Map<String, dynamic> json) {
    return AttachLink(
      title: json['title'],
      url: json['url'],
    );
  }
}

class SessionHandout {
  final String mimeType;
  final String title;
  final String url;

  SessionHandout({
    this.mimeType,
    this.title,
    this.url,
  });

  factory SessionHandout.fromJson(Map<String, dynamic> json) {
    return SessionHandout(
      mimeType: json['mimeType'],
      title: json['title'],
      url: json['url'],
    );
  }
}

class FacilatorDetail {
  final String name;
  final String id;
  final String email;

  FacilatorDetail({
    this.name,
    this.id,
    this.email,
  });

  factory FacilatorDetail.fromJson(Map<String, dynamic> json) {
    return FacilatorDetail(
      name: json['name'],
      id: json['id'],
      email: json['email'],
    );
  }
}
