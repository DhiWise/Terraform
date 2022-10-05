class PostCommentsReq {
  Data? data;

  PostCommentsReq({this.data});

  PostCommentsReq.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  Attributes? attributes;
  String? type;

  Data({this.attributes, this.type});

  Data.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.attributes != null) {
      data['attributes'] = this.attributes?.toJson();
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    return data;
  }
}

class Attributes {
  String? body;

  Attributes({this.body});

  Attributes.fromJson(Map<String, dynamic> json) {
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.body != null) {
      data['body'] = this.body;
    }
    return data;
  }
}
