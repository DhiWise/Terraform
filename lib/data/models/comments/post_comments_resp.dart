class PostCommentsResp {
  Data? data;

  PostCommentsResp({this.data});

  PostCommentsResp.fromJson(Map<String, dynamic> json) {
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

class Relationships {
  RunEvent? runEvent;

  Relationships({this.runEvent});

  Relationships.fromJson(Map<String, dynamic> json) {
    runEvent =
        json['run-event'] != null ? RunEvent.fromJson(json['run-event']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.runEvent != null) {
      data['run-event'] = this.runEvent?.toJson();
    }
    return data;
  }
}

class RunEvent {
  Data? data;
  Links? links;

  RunEvent({this.data, this.links});

  RunEvent.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.toJson();
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
