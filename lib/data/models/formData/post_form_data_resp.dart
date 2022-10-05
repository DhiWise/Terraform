class PostFormDataResp {
  List<Files>? files;

  PostFormDataResp({this.files});

  PostFormDataResp.fromJson(Map<String, dynamic> json) {
    if (json['files'] != null) {
      files = <Files>[];
      json['files'].forEach((v) {
        files?.add(Files.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.files != null) {
      data['files'] = this.files?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Files {
  String? formDataFieldName;
  String? accountId;
  String? fileId;
  String? fileUniquifier;
  String? fileUrl;

  Files(
      {this.formDataFieldName,
      this.accountId,
      this.fileId,
      this.fileUniquifier,
      this.fileUrl});

  Files.fromJson(Map<String, dynamic> json) {
    formDataFieldName = json['formDataFieldName'];
    accountId = json['accountId'];
    fileId = json['fileId'];
    fileUniquifier = json['fileUniquifier'];
    fileUrl = json['fileUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.formDataFieldName != null) {
      data['formDataFieldName'] = this.formDataFieldName;
    }
    if (this.accountId != null) {
      data['accountId'] = this.accountId;
    }
    if (this.fileId != null) {
      data['fileId'] = this.fileId;
    }
    if (this.fileUniquifier != null) {
      data['fileUniquifier'] = this.fileUniquifier;
    }
    if (this.fileUrl != null) {
      data['fileUrl'] = this.fileUrl;
    }
    return data;
  }
}
