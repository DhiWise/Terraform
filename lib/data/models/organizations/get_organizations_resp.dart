class GetOrganizationsResp {
  List<Data>? data;

  GetOrganizationsResp({this.data});

  GetOrganizationsResp.fromJson(Map<String, dynamic> json) {
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
  String? externalId;
  String? createdAt;
  String? email;
  Null? sessionTimeout;
  Null? sessionRemember;
  String? collaboratorAuthPolicy;
  bool? planExpired;
  Null? planExpiresAt;
  bool? planIsTrial;
  bool? planIsEnterprise;
  String? planIdentifier;
  bool? costEstimationEnabled;
  bool? sendPassingStatusesForUntriggeredSpeculativePlans;
  bool? allowForceDeleteWorkspaces;
  bool? driftDetection;
  String? name;
  Permissions? permissions;
  bool? fairRunQueuingEnabled;
  bool? samlEnabled;
  Null? ownersTeamSamlRoleId;
  bool? twoFactorConformant;

  Attributes(
      {this.externalId,
      this.createdAt,
      this.email,
      this.sessionTimeout,
      this.sessionRemember,
      this.collaboratorAuthPolicy,
      this.planExpired,
      this.planExpiresAt,
      this.planIsTrial,
      this.planIsEnterprise,
      this.planIdentifier,
      this.costEstimationEnabled,
      this.sendPassingStatusesForUntriggeredSpeculativePlans,
      this.allowForceDeleteWorkspaces,
      this.driftDetection,
      this.name,
      this.permissions,
      this.fairRunQueuingEnabled,
      this.samlEnabled,
      this.ownersTeamSamlRoleId,
      this.twoFactorConformant});

  Attributes.fromJson(Map<String, dynamic> json) {
    externalId = json['external-id'];
    createdAt = json['created-at'];
    email = json['email'];
    sessionTimeout = json['session-timeout'];
    sessionRemember = json['session-remember'];
    collaboratorAuthPolicy = json['collaborator-auth-policy'];
    planExpired = json['plan-expired'];
    planExpiresAt = json['plan-expires-at'];
    planIsTrial = json['plan-is-trial'];
    planIsEnterprise = json['plan-is-enterprise'];
    planIdentifier = json['plan-identifier'];
    costEstimationEnabled = json['cost-estimation-enabled'];
    sendPassingStatusesForUntriggeredSpeculativePlans =
        json['send-passing-statuses-for-untriggered-speculative-plans'];
    allowForceDeleteWorkspaces = json['allow-force-delete-workspaces'];
    driftDetection = json['drift-detection'];
    name = json['name'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
    fairRunQueuingEnabled = json['fair-run-queuing-enabled'];
    samlEnabled = json['saml-enabled'];
    ownersTeamSamlRoleId = json['owners-team-saml-role-id'];
    twoFactorConformant = json['two-factor-conformant'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.externalId != null) {
      data['external-id'] = this.externalId;
    }
    if (this.createdAt != null) {
      data['created-at'] = this.createdAt;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.sessionTimeout != null) {
      data['session-timeout'] = this.sessionTimeout;
    }
    if (this.sessionRemember != null) {
      data['session-remember'] = this.sessionRemember;
    }
    if (this.collaboratorAuthPolicy != null) {
      data['collaborator-auth-policy'] = this.collaboratorAuthPolicy;
    }
    if (this.planExpired != null) {
      data['plan-expired'] = this.planExpired;
    }
    if (this.planExpiresAt != null) {
      data['plan-expires-at'] = this.planExpiresAt;
    }
    if (this.planIsTrial != null) {
      data['plan-is-trial'] = this.planIsTrial;
    }
    if (this.planIsEnterprise != null) {
      data['plan-is-enterprise'] = this.planIsEnterprise;
    }
    if (this.planIdentifier != null) {
      data['plan-identifier'] = this.planIdentifier;
    }
    if (this.costEstimationEnabled != null) {
      data['cost-estimation-enabled'] = this.costEstimationEnabled;
    }
    if (this.sendPassingStatusesForUntriggeredSpeculativePlans != null) {
      data['send-passing-statuses-for-untriggered-speculative-plans'] =
          this.sendPassingStatusesForUntriggeredSpeculativePlans;
    }
    if (this.allowForceDeleteWorkspaces != null) {
      data['allow-force-delete-workspaces'] = this.allowForceDeleteWorkspaces;
    }
    if (this.driftDetection != null) {
      data['drift-detection'] = this.driftDetection;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.permissions != null) {
      data['permissions'] = this.permissions?.toJson();
    }
    if (this.fairRunQueuingEnabled != null) {
      data['fair-run-queuing-enabled'] = this.fairRunQueuingEnabled;
    }
    if (this.samlEnabled != null) {
      data['saml-enabled'] = this.samlEnabled;
    }
    if (this.ownersTeamSamlRoleId != null) {
      data['owners-team-saml-role-id'] = this.ownersTeamSamlRoleId;
    }
    if (this.twoFactorConformant != null) {
      data['two-factor-conformant'] = this.twoFactorConformant;
    }
    return data;
  }
}

class Permissions {
  bool? canUpdate;
  bool? canDestroy;
  bool? canAccessViaTeams;
  bool? canCreateModule;
  bool? canCreateTeam;
  bool? canCreateWorkspace;
  bool? canManageUsers;
  bool? canManageSubscription;
  bool? canManageSso;
  bool? canUpdateOauth;
  bool? canUpdateSentinel;
  bool? canUpdateSshKeys;
  bool? canUpdateApiToken;
  bool? canTraverse;
  bool? canStartTrial;
  bool? canUpdateAgentPools;
  bool? canManageTags;
  bool? canManageVarsets;
  bool? canReadVarsets;
  bool? canManagePublicProviders;
  bool? canCreateProvider;
  bool? canManagePublicModules;
  bool? canManageCustomProviders;
  bool? canManageRunTasks;
  bool? canReadRunTasks;
  bool? canManageAssessments;

  Permissions(
      {this.canUpdate,
      this.canDestroy,
      this.canAccessViaTeams,
      this.canCreateModule,
      this.canCreateTeam,
      this.canCreateWorkspace,
      this.canManageUsers,
      this.canManageSubscription,
      this.canManageSso,
      this.canUpdateOauth,
      this.canUpdateSentinel,
      this.canUpdateSshKeys,
      this.canUpdateApiToken,
      this.canTraverse,
      this.canStartTrial,
      this.canUpdateAgentPools,
      this.canManageTags,
      this.canManageVarsets,
      this.canReadVarsets,
      this.canManagePublicProviders,
      this.canCreateProvider,
      this.canManagePublicModules,
      this.canManageCustomProviders,
      this.canManageRunTasks,
      this.canReadRunTasks,
      this.canManageAssessments});

  Permissions.fromJson(Map<String, dynamic> json) {
    canUpdate = json['can-update'];
    canDestroy = json['can-destroy'];
    canAccessViaTeams = json['can-access-via-teams'];
    canCreateModule = json['can-create-module'];
    canCreateTeam = json['can-create-team'];
    canCreateWorkspace = json['can-create-workspace'];
    canManageUsers = json['can-manage-users'];
    canManageSubscription = json['can-manage-subscription'];
    canManageSso = json['can-manage-sso'];
    canUpdateOauth = json['can-update-oauth'];
    canUpdateSentinel = json['can-update-sentinel'];
    canUpdateSshKeys = json['can-update-ssh-keys'];
    canUpdateApiToken = json['can-update-api-token'];
    canTraverse = json['can-traverse'];
    canStartTrial = json['can-start-trial'];
    canUpdateAgentPools = json['can-update-agent-pools'];
    canManageTags = json['can-manage-tags'];
    canManageVarsets = json['can-manage-varsets'];
    canReadVarsets = json['can-read-varsets'];
    canManagePublicProviders = json['can-manage-public-providers'];
    canCreateProvider = json['can-create-provider'];
    canManagePublicModules = json['can-manage-public-modules'];
    canManageCustomProviders = json['can-manage-custom-providers'];
    canManageRunTasks = json['can-manage-run-tasks'];
    canReadRunTasks = json['can-read-run-tasks'];
    canManageAssessments = json['can-manage-assessments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.canUpdate != null) {
      data['can-update'] = this.canUpdate;
    }
    if (this.canDestroy != null) {
      data['can-destroy'] = this.canDestroy;
    }
    if (this.canAccessViaTeams != null) {
      data['can-access-via-teams'] = this.canAccessViaTeams;
    }
    if (this.canCreateModule != null) {
      data['can-create-module'] = this.canCreateModule;
    }
    if (this.canCreateTeam != null) {
      data['can-create-team'] = this.canCreateTeam;
    }
    if (this.canCreateWorkspace != null) {
      data['can-create-workspace'] = this.canCreateWorkspace;
    }
    if (this.canManageUsers != null) {
      data['can-manage-users'] = this.canManageUsers;
    }
    if (this.canManageSubscription != null) {
      data['can-manage-subscription'] = this.canManageSubscription;
    }
    if (this.canManageSso != null) {
      data['can-manage-sso'] = this.canManageSso;
    }
    if (this.canUpdateOauth != null) {
      data['can-update-oauth'] = this.canUpdateOauth;
    }
    if (this.canUpdateSentinel != null) {
      data['can-update-sentinel'] = this.canUpdateSentinel;
    }
    if (this.canUpdateSshKeys != null) {
      data['can-update-ssh-keys'] = this.canUpdateSshKeys;
    }
    if (this.canUpdateApiToken != null) {
      data['can-update-api-token'] = this.canUpdateApiToken;
    }
    if (this.canTraverse != null) {
      data['can-traverse'] = this.canTraverse;
    }
    if (this.canStartTrial != null) {
      data['can-start-trial'] = this.canStartTrial;
    }
    if (this.canUpdateAgentPools != null) {
      data['can-update-agent-pools'] = this.canUpdateAgentPools;
    }
    if (this.canManageTags != null) {
      data['can-manage-tags'] = this.canManageTags;
    }
    if (this.canManageVarsets != null) {
      data['can-manage-varsets'] = this.canManageVarsets;
    }
    if (this.canReadVarsets != null) {
      data['can-read-varsets'] = this.canReadVarsets;
    }
    if (this.canManagePublicProviders != null) {
      data['can-manage-public-providers'] = this.canManagePublicProviders;
    }
    if (this.canCreateProvider != null) {
      data['can-create-provider'] = this.canCreateProvider;
    }
    if (this.canManagePublicModules != null) {
      data['can-manage-public-modules'] = this.canManagePublicModules;
    }
    if (this.canManageCustomProviders != null) {
      data['can-manage-custom-providers'] = this.canManageCustomProviders;
    }
    if (this.canManageRunTasks != null) {
      data['can-manage-run-tasks'] = this.canManageRunTasks;
    }
    if (this.canReadRunTasks != null) {
      data['can-read-run-tasks'] = this.canReadRunTasks;
    }
    if (this.canManageAssessments != null) {
      data['can-manage-assessments'] = this.canManageAssessments;
    }
    return data;
  }
}

class Relationships {
  OauthTokens? oauthTokens;
  AuthenticationToken? authenticationToken;
  EntitlementSet? entitlementSet;
  Subscription? subscription;

  Relationships(
      {this.oauthTokens,
      this.authenticationToken,
      this.entitlementSet,
      this.subscription});

  Relationships.fromJson(Map<String, dynamic> json) {
    oauthTokens = json['oauth-tokens'] != null
        ? OauthTokens.fromJson(json['oauth-tokens'])
        : null;
    authenticationToken = json['authentication-token'] != null
        ? AuthenticationToken.fromJson(json['authentication-token'])
        : null;
    entitlementSet = json['entitlement-set'] != null
        ? EntitlementSet.fromJson(json['entitlement-set'])
        : null;
    subscription = json['subscription'] != null
        ? Subscription.fromJson(json['subscription'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.oauthTokens != null) {
      data['oauth-tokens'] = this.oauthTokens?.toJson();
    }
    if (this.authenticationToken != null) {
      data['authentication-token'] = this.authenticationToken?.toJson();
    }
    if (this.entitlementSet != null) {
      data['entitlement-set'] = this.entitlementSet?.toJson();
    }
    if (this.subscription != null) {
      data['subscription'] = this.subscription?.toJson();
    }
    return data;
  }
}

class OauthTokens {
  Links? links;

  OauthTokens({this.links});

  OauthTokens.fromJson(Map<String, dynamic> json) {
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

class EntitlementSet {
  Data? data;
  Links? links;

  EntitlementSet({this.data, this.links});

  EntitlementSet.fromJson(Map<String, dynamic> json) {
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

class Subscription {
  Links? links;

  Subscription({this.links});

  Subscription.fromJson(Map<String, dynamic> json) {
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
