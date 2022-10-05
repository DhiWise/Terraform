class PostV2RunsResp {
  Data? data;

  PostV2RunsResp({this.data});

  PostV2RunsResp.fromJson(Map<String, dynamic> json) {
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
  Actions? actions;
  bool? allowEmptyApply;
  bool? autoApply;
  Null? canceledAt;
  String? createdAt;
  bool? hasChanges;
  bool? isDestroy;
  String? message;
  bool? planOnly;
  bool? refresh;
  bool? refreshOnly;
  Null? replaceAddrs;
  String? source;
  StatusTimestamps? statusTimestamps;
  String? status;
  Null? targetAddrs;
  String? triggerReason;
  String? terraformVersion;
  Permissions? permissions;
  List? variables;

  Attributes(
      {this.actions,
      this.allowEmptyApply,
      this.autoApply,
      this.canceledAt,
      this.createdAt,
      this.hasChanges,
      this.isDestroy,
      this.message,
      this.planOnly,
      this.refresh,
      this.refreshOnly,
      this.replaceAddrs,
      this.source,
      this.statusTimestamps,
      this.status,
      this.targetAddrs,
      this.triggerReason,
      this.terraformVersion,
      this.permissions,
      this.variables});

  Attributes.fromJson(Map<String, dynamic> json) {
    actions =
        json['actions'] != null ? Actions.fromJson(json['actions']) : null;
    allowEmptyApply = json['allow-empty-apply'];
    autoApply = json['auto-apply'];
    canceledAt = json['canceled-at'];
    createdAt = json['created-at'];
    hasChanges = json['has-changes'];
    isDestroy = json['is-destroy'];
    message = json['message'];
    planOnly = json['plan-only'];
    refresh = json['refresh'];
    refreshOnly = json['refresh-only'];
    replaceAddrs = json['replace-addrs'];
    source = json['source'];
    statusTimestamps = json['status-timestamps'] != null
        ? StatusTimestamps.fromJson(json['status-timestamps'])
        : null;
    status = json['status'];
    targetAddrs = json['target-addrs'];
    triggerReason = json['trigger-reason'];
    terraformVersion = json['terraform-version'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
    if (json['variables'] != null) {
      variables = [];
      json['variables'].forEach((v) {
        variables?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.actions != null) {
      data['actions'] = this.actions?.toJson();
    }
    if (this.allowEmptyApply != null) {
      data['allow-empty-apply'] = this.allowEmptyApply;
    }
    if (this.autoApply != null) {
      data['auto-apply'] = this.autoApply;
    }
    if (this.canceledAt != null) {
      data['canceled-at'] = this.canceledAt;
    }
    if (this.createdAt != null) {
      data['created-at'] = this.createdAt;
    }
    if (this.hasChanges != null) {
      data['has-changes'] = this.hasChanges;
    }
    if (this.isDestroy != null) {
      data['is-destroy'] = this.isDestroy;
    }
    if (this.message != null) {
      data['message'] = this.message;
    }
    if (this.planOnly != null) {
      data['plan-only'] = this.planOnly;
    }
    if (this.refresh != null) {
      data['refresh'] = this.refresh;
    }
    if (this.refreshOnly != null) {
      data['refresh-only'] = this.refreshOnly;
    }
    if (this.replaceAddrs != null) {
      data['replace-addrs'] = this.replaceAddrs;
    }
    if (this.source != null) {
      data['source'] = this.source;
    }
    if (this.statusTimestamps != null) {
      data['status-timestamps'] = this.statusTimestamps?.toJson();
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.targetAddrs != null) {
      data['target-addrs'] = this.targetAddrs;
    }
    if (this.triggerReason != null) {
      data['trigger-reason'] = this.triggerReason;
    }
    if (this.terraformVersion != null) {
      data['terraform-version'] = this.terraformVersion;
    }
    if (this.permissions != null) {
      data['permissions'] = this.permissions?.toJson();
    }
    if (this.variables != null) {
      data['variables'] = this.variables?.map((v) => v).toList();
    }
    return data;
  }
}

class Actions {
  bool? isCancelable;
  bool? isConfirmable;
  bool? isDiscardable;
  bool? isForceCancelable;

  Actions(
      {this.isCancelable,
      this.isConfirmable,
      this.isDiscardable,
      this.isForceCancelable});

  Actions.fromJson(Map<String, dynamic> json) {
    isCancelable = json['is-cancelable'];
    isConfirmable = json['is-confirmable'];
    isDiscardable = json['is-discardable'];
    isForceCancelable = json['is-force-cancelable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.isCancelable != null) {
      data['is-cancelable'] = this.isCancelable;
    }
    if (this.isConfirmable != null) {
      data['is-confirmable'] = this.isConfirmable;
    }
    if (this.isDiscardable != null) {
      data['is-discardable'] = this.isDiscardable;
    }
    if (this.isForceCancelable != null) {
      data['is-force-cancelable'] = this.isForceCancelable;
    }
    return data;
  }
}

class StatusTimestamps {
  String? planQueueableAt;
  String? queuingAt;

  StatusTimestamps({this.planQueueableAt, this.queuingAt});

  StatusTimestamps.fromJson(Map<String, dynamic> json) {
    planQueueableAt = json['plan-queueable-at'];
    queuingAt = json['queuing-at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.planQueueableAt != null) {
      data['plan-queueable-at'] = this.planQueueableAt;
    }
    if (this.queuingAt != null) {
      data['queuing-at'] = this.queuingAt;
    }
    return data;
  }
}

class Permissions {
  bool? canApply;
  bool? canCancel;
  bool? canComment;
  bool? canDiscard;
  bool? canForceExecute;
  bool? canForceCancel;
  bool? canOverridePolicyCheck;

  Permissions(
      {this.canApply,
      this.canCancel,
      this.canComment,
      this.canDiscard,
      this.canForceExecute,
      this.canForceCancel,
      this.canOverridePolicyCheck});

  Permissions.fromJson(Map<String, dynamic> json) {
    canApply = json['can-apply'];
    canCancel = json['can-cancel'];
    canComment = json['can-comment'];
    canDiscard = json['can-discard'];
    canForceExecute = json['can-force-execute'];
    canForceCancel = json['can-force-cancel'];
    canOverridePolicyCheck = json['can-override-policy-check'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.canApply != null) {
      data['can-apply'] = this.canApply;
    }
    if (this.canCancel != null) {
      data['can-cancel'] = this.canCancel;
    }
    if (this.canComment != null) {
      data['can-comment'] = this.canComment;
    }
    if (this.canDiscard != null) {
      data['can-discard'] = this.canDiscard;
    }
    if (this.canForceExecute != null) {
      data['can-force-execute'] = this.canForceExecute;
    }
    if (this.canForceCancel != null) {
      data['can-force-cancel'] = this.canForceCancel;
    }
    if (this.canOverridePolicyCheck != null) {
      data['can-override-policy-check'] = this.canOverridePolicyCheck;
    }
    return data;
  }
}

class Relationships {
  Workspace? workspace;
  Apply? apply;
  ConfigurationVersion? configurationVersion;
  CreatedBy? createdBy;
  Plan? plan;
  RunEvents? runEvents;
  TaskStages? taskStages;
  PolicyChecks? policyChecks;
  Comments? comments;

  Relationships(
      {this.workspace,
      this.apply,
      this.configurationVersion,
      this.createdBy,
      this.plan,
      this.runEvents,
      this.taskStages,
      this.policyChecks,
      this.comments});

  Relationships.fromJson(Map<String, dynamic> json) {
    workspace = json['workspace'] != null
        ? Workspace.fromJson(json['workspace'])
        : null;
    apply = json['apply'] != null ? Apply.fromJson(json['apply']) : null;
    configurationVersion = json['configuration-version'] != null
        ? ConfigurationVersion.fromJson(json['configuration-version'])
        : null;
    createdBy = json['created-by'] != null
        ? CreatedBy.fromJson(json['created-by'])
        : null;
    plan = json['plan'] != null ? Plan.fromJson(json['plan']) : null;
    runEvents = json['run-events'] != null
        ? RunEvents.fromJson(json['run-events'])
        : null;
    taskStages = json['task-stages'] != null
        ? TaskStages.fromJson(json['task-stages'])
        : null;
    policyChecks = json['policy-checks'] != null
        ? PolicyChecks.fromJson(json['policy-checks'])
        : null;
    comments =
        json['comments'] != null ? Comments.fromJson(json['comments']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.workspace != null) {
      data['workspace'] = this.workspace?.toJson();
    }
    if (this.apply != null) {
      data['apply'] = this.apply?.toJson();
    }
    if (this.configurationVersion != null) {
      data['configuration-version'] = this.configurationVersion?.toJson();
    }
    if (this.createdBy != null) {
      data['created-by'] = this.createdBy?.toJson();
    }
    if (this.plan != null) {
      data['plan'] = this.plan?.toJson();
    }
    if (this.runEvents != null) {
      data['run-events'] = this.runEvents?.toJson();
    }
    if (this.taskStages != null) {
      data['task-stages'] = this.taskStages?.toJson();
    }
    if (this.policyChecks != null) {
      data['policy-checks'] = this.policyChecks?.toJson();
    }
    if (this.comments != null) {
      data['comments'] = this.comments?.toJson();
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

class Apply {
  Data? data;
  Links? links;

  Apply({this.data, this.links});

  Apply.fromJson(Map<String, dynamic> json) {
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

class ConfigurationVersion {
  Data? data;
  Links? links;

  ConfigurationVersion({this.data, this.links});

  ConfigurationVersion.fromJson(Map<String, dynamic> json) {
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

class CreatedBy {
  Data? data;
  Links? links;

  CreatedBy({this.data, this.links});

  CreatedBy.fromJson(Map<String, dynamic> json) {
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

class Plan {
  Data? data;
  Links? links;

  Plan({this.data, this.links});

  Plan.fromJson(Map<String, dynamic> json) {
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

class RunEvents {
  List<Data>? data;
  Links? links;

  RunEvents({this.data, this.links});

  RunEvents.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links?.toJson();
    }
    return data;
  }
}

class TaskStages {
  List? data;
  Links? links;

  TaskStages({this.data, this.links});

  TaskStages.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(v);
      });
    }
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v).toList();
    }
    if (this.links != null) {
      data['links'] = this.links?.toJson();
    }
    return data;
  }
}

class PolicyChecks {
  List? data;
  Links? links;

  PolicyChecks({this.data, this.links});

  PolicyChecks.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(v);
      });
    }
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v).toList();
    }
    if (this.links != null) {
      data['links'] = this.links?.toJson();
    }
    return data;
  }
}

class Comments {
  List? data;
  Links? links;

  Comments({this.data, this.links});

  Comments.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(v);
      });
    }
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v).toList();
    }
    if (this.links != null) {
      data['links'] = this.links?.toJson();
    }
    return data;
  }
}
