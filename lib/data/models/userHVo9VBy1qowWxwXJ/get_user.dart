class GetUserHVo9VBy1qowWxwXJResp {
  Data? data;

  GetUserHVo9VBy1qowWxwXJResp({this.data});

  GetUserHVo9VBy1qowWxwXJResp.fromJson(Map<String, dynamic> json) {
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
  String? username;
  bool? isServiceAccount;
  String? avatarUrl;
  Permissions? permissions;

  Attributes(
      {this.username, this.isServiceAccount, this.avatarUrl, this.permissions});

  Attributes.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    isServiceAccount = json['is-service-account'];
    avatarUrl = json['avatar-url'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.username != null) {
      data['username'] = this.username;
    }
    if (this.isServiceAccount != null) {
      data['is-service-account'] = this.isServiceAccount;
    }
    if (this.avatarUrl != null) {
      data['avatar-url'] = this.avatarUrl;
    }
    if (this.permissions != null) {
      data['permissions'] = this.permissions?.toJson();
    }
    return data;
  }
}

class Permissions {
  bool? canCreateOrganizations;
  bool? canChangeEmail;
  bool? canChangeUsername;
  bool? canManageUserTokens;
  bool? canView2faSettings;
  bool? canManageHcpAccount;

  Permissions(
      {this.canCreateOrganizations,
      this.canChangeEmail,
      this.canChangeUsername,
      this.canManageUserTokens,
      this.canView2faSettings,
      this.canManageHcpAccount});

  Permissions.fromJson(Map<String, dynamic> json) {
    canCreateOrganizations = json['can-create-organizations'];
    canChangeEmail = json['can-change-email'];
    canChangeUsername = json['can-change-username'];
    canManageUserTokens = json['can-manage-user-tokens'];
    canView2faSettings = json['can-view2fa-settings'];
    canManageHcpAccount = json['can-manage-hcp-account'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.canCreateOrganizations != null) {
      data['can-create-organizations'] = this.canCreateOrganizations;
    }
    if (this.canChangeEmail != null) {
      data['can-change-email'] = this.canChangeEmail;
    }
    if (this.canChangeUsername != null) {
      data['can-change-username'] = this.canChangeUsername;
    }
    if (this.canManageUserTokens != null) {
      data['can-manage-user-tokens'] = this.canManageUserTokens;
    }
    if (this.canView2faSettings != null) {
      data['can-view2fa-settings'] = this.canView2faSettings;
    }
    if (this.canManageHcpAccount != null) {
      data['can-manage-hcp-account'] = this.canManageHcpAccount;
    }
    return data;
  }
}

class Relationships {
  AuthenticationTokens? authenticationTokens;

  Relationships({this.authenticationTokens});

  Relationships.fromJson(Map<String, dynamic> json) {
    authenticationTokens = json['authentication-tokens'] != null
        ? AuthenticationTokens.fromJson(json['authentication-tokens'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.authenticationTokens != null) {
      data['authentication-tokens'] = this.authenticationTokens?.toJson();
    }
    return data;
  }
}

class AuthenticationTokens {
  Links? links;

  AuthenticationTokens({this.links});

  AuthenticationTokens.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
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
