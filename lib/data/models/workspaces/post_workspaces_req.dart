class PostWorkspacesReq {
  Data? data;

  PostWorkspacesReq({this.data});

  PostWorkspacesReq.fromJson(Map<String, dynamic> json) {
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
  String? name;
  int? resourceCount;
  String? updatedAt;

  Attributes({this.name, this.resourceCount, this.updatedAt});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    resourceCount = json['resource-count'];
    updatedAt = json['updated-at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.resourceCount != null) {
      data['resource-count'] = this.resourceCount;
    }
    if (this.updatedAt != null) {
      data['updated-at'] = this.updatedAt;
    }
    return data;
  }
}
