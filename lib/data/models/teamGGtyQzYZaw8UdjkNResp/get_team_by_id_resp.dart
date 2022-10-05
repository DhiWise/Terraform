class GetTeamGGtyQzYZaw8UdjkNResp {
  Data? data;

  GetTeamGGtyQzYZaw8UdjkNResp({this.data});

  GetTeamGGtyQzYZaw8UdjkNResp.fromJson(Map<String, dynamic> json) {
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
  String? name;
  int? usersCount;
  String? visibility;
  Permissions? permissions;

  Attributes({this.name, this.usersCount, this.visibility, this.permissions});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    usersCount = json['users-count'];
    visibility = json['visibility'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.usersCount != null) {
      data['users-count'] = this.usersCount;
    }
    if (this.visibility != null) {
      data['visibility'] = this.visibility;
    }
    if (this.permissions != null) {
      data['permissions'] = this.permissions?.toJson();
    }
    return data;
  }
}

class Permissions {
  bool? canUpdateMembership;
  bool? canDestroy;
  bool? canUpdateOrganizationAccess;
  bool? canUpdateApiToken;
  bool? canUpdateVisibility;
  bool? canUpdateName;
  bool? canUpdateSsoTeamId;

  Permissions(
      {this.canUpdateMembership,
      this.canDestroy,
      this.canUpdateOrganizationAccess,
      this.canUpdateApiToken,
      this.canUpdateVisibility,
      this.canUpdateName,
      this.canUpdateSsoTeamId});

  Permissions.fromJson(Map<String, dynamic> json) {
    canUpdateMembership = json['can-update-membership'];
    canDestroy = json['can-destroy'];
    canUpdateOrganizationAccess = json['can-update-organization-access'];
    canUpdateApiToken = json['can-update-api-token'];
    canUpdateVisibility = json['can-update-visibility'];
    canUpdateName = json['can-update-name'];
    canUpdateSsoTeamId = json['can-update-sso-team-id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.canUpdateMembership != null) {
      data['can-update-membership'] = this.canUpdateMembership;
    }
    if (this.canDestroy != null) {
      data['can-destroy'] = this.canDestroy;
    }
    if (this.canUpdateOrganizationAccess != null) {
      data['can-update-organization-access'] = this.canUpdateOrganizationAccess;
    }
    if (this.canUpdateApiToken != null) {
      data['can-update-api-token'] = this.canUpdateApiToken;
    }
    if (this.canUpdateVisibility != null) {
      data['can-update-visibility'] = this.canUpdateVisibility;
    }
    if (this.canUpdateName != null) {
      data['can-update-name'] = this.canUpdateName;
    }
    if (this.canUpdateSsoTeamId != null) {
      data['can-update-sso-team-id'] = this.canUpdateSsoTeamId;
    }
    return data;
  }
}

class Relationships {
  Organization? organization;
  Users? users;
  OrganizationMemberships? organizationMemberships;
  AuthenticationToken? authenticationToken;

  Relationships(
      {this.organization,
      this.users,
      this.organizationMemberships,
      this.authenticationToken});

  Relationships.fromJson(Map<String, dynamic> json) {
    organization = json['organization'] != null
        ? Organization.fromJson(json['organization'])
        : null;
    users = json['users'] != null ? Users.fromJson(json['users']) : null;
    organizationMemberships = json['organization-memberships'] != null
        ? OrganizationMemberships.fromJson(json['organization-memberships'])
        : null;
    authenticationToken = json['authentication-token'] != null
        ? AuthenticationToken.fromJson(json['authentication-token'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.organization != null) {
      data['organization'] = this.organization?.toJson();
    }
    if (this.users != null) {
      data['users'] = this.users?.toJson();
    }
    if (this.organizationMemberships != null) {
      data['organization-memberships'] = this.organizationMemberships?.toJson();
    }
    if (this.authenticationToken != null) {
      data['authentication-token'] = this.authenticationToken?.toJson();
    }
    return data;
  }
}

class Organization {
  Data? data;

  Organization({this.data});

  Organization.fromJson(Map<String, dynamic> json) {
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

class Users {
  List<Data>? data;

  Users({this.data});

  Users.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OrganizationMemberships {
  List<Data>? data;

  OrganizationMemberships({this.data});

  OrganizationMemberships.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AuthenticationToken {
  Links? links;

  AuthenticationToken({this.links});

  AuthenticationToken.fromJson(Map<String, dynamic> json) {
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
