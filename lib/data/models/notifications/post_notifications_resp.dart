class PostNotificationsResp {
  String? id;
  int? recipients;
  Null? externalId;

  PostNotificationsResp({this.id, this.recipients, this.externalId});

  PostNotificationsResp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    recipients = json['recipients'];
    externalId = json['external_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.recipients != null) {
      data['recipients'] = this.recipients;
    }
    if (this.externalId != null) {
      data['external_id'] = this.externalId;
    }
    return data;
  }
}
