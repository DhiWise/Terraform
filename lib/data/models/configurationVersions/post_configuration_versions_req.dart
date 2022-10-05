class PostConfigurationVersionsReq {
  Data? data;

  PostConfigurationVersionsReq({this.data});

  PostConfigurationVersionsReq.fromJson(Map<String, dynamic> json) {
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
  String? type;
  Attributes? attributes;

  Data({this.type, this.attributes});

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes?.toJson();
    }
    return data;
  }
}

class Attributes {
  bool? autoQueueRuns;

  Attributes({this.autoQueueRuns});

  Attributes.fromJson(Map<String, dynamic> json) {
    autoQueueRuns = json['auto-queue-runs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.autoQueueRuns != null) {
      data['auto-queue-runs'] = this.autoQueueRuns;
    }
    return data;
  }
}
