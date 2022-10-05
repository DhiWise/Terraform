class PostCancelReq {
  String? comment;

  PostCancelReq({this.comment});

  PostCancelReq.fromJson(Map<String, dynamic> json) {
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.comment != null) {
      data['comment'] = this.comment;
    }
    return data;
  }
}
