class PostConfigurationVersionsResp {
  Data? data;

  PostConfigurationVersionsResp({this.data});

  PostConfigurationVersionsResp.fromJson(Map<String, dynamic> json) {
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
  String? id;
  String? type;
  Attributes? attributes;
  Relationships? relationships;
  Links? links;

  Data({this.id, this.type, this.attributes, this.relationships, this.links});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
    relationships = json['relationships'] != null
        ? Relationships.fromJson(json['relationships'])
        : null;
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes?.toJson();
    }
    if (this.relationships != null) {
      data['relationships'] = this.relationships?.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links?.toJson();
    }
    return data;
  }
}

class Attributes {
  bool? autoQueueRuns;
  Null? error;
  Null? errorMessage;
  String? source;
  bool? speculative;
  String? status;
  List? changedFiles;
  String? uploadUrl;

  Attributes(
      {this.autoQueueRuns,
      this.error,
      this.errorMessage,
      this.source,
      this.speculative,
      this.status,
      this.changedFiles,
      this.uploadUrl});

  Attributes.fromJson(Map<String, dynamic> json) {
    autoQueueRuns = json['auto-queue-runs'];
    error = json['error'];
    errorMessage = json['error-message'];
    source = json['source'];
    speculative = json['speculative'];
    status = json['status'];
    if (json['changed-files'] != null) {
      changedFiles = [];
      json['changed-files'].forEach((v) {
        changedFiles?.add(v);
      });
    }
    uploadUrl = json['upload-url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.autoQueueRuns != null) {
      data['auto-queue-runs'] = this.autoQueueRuns;
    }
    if (this.error != null) {
      data['error'] = this.error;
    }
    if (this.errorMessage != null) {
      data['error-message'] = this.errorMessage;
    }
    if (this.source != null) {
      data['source'] = this.source;
    }
    if (this.speculative != null) {
      data['speculative'] = this.speculative;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.changedFiles != null) {
      data['changed-files'] = this.changedFiles?.map((v) => v).toList();
    }
    if (this.uploadUrl != null) {
      data['upload-url'] = this.uploadUrl;
    }
    return data;
  }
}

class Relationships {
  IngressAttributes? ingressAttributes;

  Relationships({this.ingressAttributes});

  Relationships.fromJson(Map<String, dynamic> json) {
    ingressAttributes = json['ingress-attributes'] != null
        ? IngressAttributes.fromJson(json['ingress-attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.ingressAttributes != null) {
      data['ingress-attributes'] = this.ingressAttributes?.toJson();
    }
    return data;
  }
}

class IngressAttributes {
  Null? data;
  Links? links;

  IngressAttributes({this.data, this.links});

  IngressAttributes.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data;
    }
    if (this.links != null) {
      data['links'] = this.links?.toJson();
    }
    return data;
  }
}

class Links {
  String? related;
  String? self;

  Links({this.related, this.self});

  Links.fromJson(Map<String, dynamic> json) {
    related = json['related'];
    self = json['self'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.related != null) {
      data['related'] = this.related;
    }
    if (this.self != null) {
      data['self'] = this.self;
    }
    return data;
  }
}
