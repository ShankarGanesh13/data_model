class Competency {
  String courseId;
  String competencyTheme;
  int competencySubThemeId;
  String competencyArea;
  String competencyThemeType;
  String competencySubThemeDescription;
  int competencyAreaId;
  String competencySubTheme;
  int competencyThemeId;
  String competencyThemeDescription;
  String competencyAreaDescription;

  Competency({
    this.courseId,
    this.competencyTheme,
    this.competencySubThemeId,
    this.competencyArea,
    this.competencyThemeType,
    this.competencySubThemeDescription,
    this.competencyAreaId,
    this.competencySubTheme,
    this.competencyThemeId,
    this.competencyThemeDescription,
    this.competencyAreaDescription,
  });

  factory Competency.fromJson(Map<String, dynamic> json, courseId) =>
      Competency(
        courseId: courseId,
        competencyTheme: json["competencyTheme"],
        competencySubThemeId: json["competencySubThemeId"],
        competencyArea: json["competencyArea"],
        competencyThemeType: json["competencyThemeType"],
        competencySubThemeDescription: json["competencySubThemeDescription"],
        competencyAreaId: json["competencyAreaId"],
        competencySubTheme: json["competencySubTheme"],
        competencyThemeId: json["competencyThemeId"],
        competencyThemeDescription: json["competencyThemeDescription"],
        competencyAreaDescription: json["competencyAreaDescription"],
      );
}
