class PostCancelResp {
  List<Errors>? errors;

  PostCancelResp({this.errors});

  PostCancelResp.fromJson(Map<String, dynamic> json) {
    if (json['errors'] != null) {
      errors = <Errors>[];
      json['errors'].forEach((v) {
        errors?.add(Errors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.errors != null) {
      data['errors'] = this.errors?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Errors {
  String? status;
  String? title;

  Errors({this.status, this.title});

  Errors.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    return data;
  }
}
