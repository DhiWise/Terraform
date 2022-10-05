class PostNotificationsReq {
  String? appId;
  List<String>? includedSegments;
  String? name;
  String? smsFrom;
  Contents? contents;

  PostNotificationsReq(
      {this.appId,
      this.includedSegments,
      this.name,
      this.smsFrom,
      this.contents});

  PostNotificationsReq.fromJson(Map<String, dynamic> json) {
    appId = json['app_id'];
    includedSegments = json['included_segments'].cast<String>();
    name = json['name'];
    smsFrom = json['sms_from'];
    contents =
        json['contents'] != null ? Contents.fromJson(json['contents']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.appId != null) {
      data['app_id'] = this.appId;
    }
    if (this.includedSegments != null) {
      data['included_segments'] = this.includedSegments;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.smsFrom != null) {
      data['sms_from'] = this.smsFrom;
    }
    if (this.contents != null) {
      data['contents'] = this.contents?.toJson();
    }
    return data;
  }
}

class Contents {
  String? en;
  Contents({this.en});

  Contents.fromJson(Map<String, dynamic> json) {
    en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.en != null) {
      data['en'] = this.en;
    }
    return data;
  }
}
