class PostV2RunsReq {
  Data? data;

  PostV2RunsReq({this.data});

  PostV2RunsReq.fromJson(Map<String, dynamic> json) {
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
  Relationships? relationships;
  String? id;

  Data({this.attributes, this.type, this.relationships, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
    type = json['type'];
    relationships = json['relationships'] != null
        ? Relationships.fromJson(json['relationships'])
        : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.attributes != null) {
      data['attributes'] = this.attributes?.toJson();
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.relationships != null) {
      data['relationships'] = this.relationships?.toJson();
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class Attributes {
  String? message;

  Attributes({this.message});

  Attributes.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.message != null) {
      data['message'] = this.message;
    }
    return data;
  }
}

class Relationships {
  Workspace? workspace;
  ConfigurationVersion? configurationVersion;

  Relationships({this.workspace, this.configurationVersion});

  Relationships.fromJson(Map<String, dynamic> json) {
    workspace = json['workspace'] != null
        ? Workspace.fromJson(json['workspace'])
        : null;
    configurationVersion = json['configuration-version'] != null
        ? ConfigurationVersion.fromJson(json['configuration-version'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.workspace != null) {
      data['workspace'] = this.workspace?.toJson();
    }
    if (this.configurationVersion != null) {
      data['configuration-version'] = this.configurationVersion?.toJson();
    }
    return data;
  }
}

class Workspace {
  Data? data;

  Workspace({this.data});

  Workspace.fromJson(Map<String, dynamic> json) {
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

class ConfigurationVersion {
  Data? data;

  ConfigurationVersion({this.data});

  ConfigurationVersion.fromJson(Map<String, dynamic> json) {
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
