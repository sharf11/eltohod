class LibraryModel {
  LibraryModel({
    this.statusCode,
    this.page,
    this.pages,
    this.perPage,
    this.total,
    this.librarytype,
    this.messageCode,
  });

  int statusCode;
  int page;
  int pages;
  int perPage;
  int total;
  List<libraryType> librarytype;
  String messageCode;

  factory LibraryModel.fromJson(Map<String, dynamic> json) => LibraryModel(
    statusCode: json["StatusCode"] == null ? null : json["StatusCode"],
    page: json["page"] == null ? null : json["page"],
    pages: json["pages"] == null ? null : json["pages"],
    perPage: json["per_page"] == null ? null : json["per_page"],
    total: json["total"] == null ? null : json["total"],
    librarytype: json["Message"] == null ? null : List<libraryType>.from(json["Message"].map((x) => libraryType.fromJson(x))),
    messageCode: json["MessageCode"] == null ? null : json["MessageCode"],
  );

  Map<String, dynamic> toJson() => {
    "StatusCode": statusCode == null ? null : statusCode,
    "page": page == null ? null : page,
    "pages": pages == null ? null : pages,
    "per_page": perPage == null ? null : perPage,
    "total": total == null ? null : total,
    "Message": librarytype == null ? null : List<dynamic>.from(librarytype.map((x) => x.toJson())),
    "MessageCode": messageCode == null ? null : messageCode,
  };
}

class libraryType {
  libraryType({
    this.id,
    this.fileName,
    this.fileType,
    this.fileTags,
    this.fileTagsEn,
    this.fileTagsAr,
    this.filePath,
  });

  String id;
  String fileName;
  String fileType;
  String fileTags;
  String fileTagsEn;
  String fileTagsAr;
  String filePath;

  factory libraryType.fromJson(Map<String, dynamic> json) => libraryType(
    id: json["id"] == null ? null : json["id"],
    fileName: json["file_name"] == null ? null : json["file_name"],
    fileType: json["file_type"] == null ? null : json["file_type"],
    fileTags: json["file_tags"] == null ? null : json["file_tags"],
    fileTagsEn: json["file_tags_en"] == null ? null : json["file_tags_en"],
    fileTagsAr: json["file_tags_ar"] == null ? null : json["file_tags_ar"],
    filePath: json["file_path"] == null ? null : json["file_path"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "file_name": fileName == null ? null : fileName,
    "file_type": fileType == null ? null : fileType,
    "file_tags": fileTags == null ? null : fileTags,
    "file_tags_en": fileTagsEn == null ? null : fileTagsEn,
    "file_tags_ar": fileTagsAr == null ? null : fileTagsAr,
    "file_path": filePath == null ? null : filePath,
  };
}