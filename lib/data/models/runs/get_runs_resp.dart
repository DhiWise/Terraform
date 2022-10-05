class GetRunsResp {
  List<Data>? data;
  Links? links;
  Meta? meta;

  GetRunsResp({this.data, this.links, this.meta});

  GetRunsResp.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links?.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta?.toJson();
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
  String? canceledAt;
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
  String? forceCancelAvailableAt;

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
      this.variables,
      this.forceCancelAvailableAt});

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
    forceCancelAvailableAt = json['force-cancel-available-at'];
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
    if (this.forceCancelAvailableAt != null) {
      data['force-cancel-available-at'] = this.forceCancelAvailableAt;
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
  String? queuingAt;
  String? planningAt;
  String? planQueuedAt;
  String? planQueueableAt;
  String? forceCanceledAt;
  String? erroredAt;

  StatusTimestamps(
      {this.queuingAt,
      this.planningAt,
      this.planQueuedAt,
      this.planQueueableAt,
      this.forceCanceledAt,
      this.erroredAt});

  StatusTimestamps.fromJson(Map<String, dynamic> json) {
    queuingAt = json['queuing-at'];
    planningAt = json['planning-at'];
    planQueuedAt = json['plan-queued-at'];
    planQueueableAt = json['plan-queueable-at'];
    forceCanceledAt = json['force-canceled-at'];
    erroredAt = json['errored-at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.queuingAt != null) {
      data['queuing-at'] = this.queuingAt;
    }
    if (this.planningAt != null) {
      data['planning-at'] = this.planningAt;
    }
    if (this.planQueuedAt != null) {
      data['plan-queued-at'] = this.planQueuedAt;
    }
    if (this.planQueueableAt != null) {
      data['plan-queueable-at'] = this.planQueueableAt;
    }
    if (this.forceCanceledAt != null) {
      data['force-canceled-at'] = this.forceCanceledAt;
    }
    if (this.erroredAt != null) {
      data['errored-at'] = this.erroredAt;
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
  CanceledBy? canceledBy;

  Relationships(
      {this.workspace,
      this.apply,
      this.configurationVersion,
      this.createdBy,
      this.plan,
      this.runEvents,
      this.taskStages,
      this.policyChecks,
      this.comments,
      this.canceledBy});

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
    canceledBy = json['canceled-by'] != null
        ? CanceledBy.fromJson(json['canceled-by'])
        : null;
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
    if (this.canceledBy != null) {
      data['canceled-by'] = this.canceledBy?.toJson();
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
  String? first;
  Null? prev;
  Null? next;
  String? last;

  Links({this.related, this.self, this.first, this.prev, this.next, this.last});

  Links.fromJson(Map<String, dynamic> json) {
    related = json['related'];
    self = json['self'];
    first = json['first'];
    prev = json['prev'];
    next = json['next'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.related != null) {
      data['related'] = this.related;
    }
    if (this.self != null) {
      data['self'] = this.self;
    }
    if (this.first != null) {
      data['first'] = this.first;
    }
    if (this.prev != null) {
      data['prev'] = this.prev;
    }
    if (this.next != null) {
      data['next'] = this.next;
    }
    if (this.last != null) {
      data['last'] = this.last;
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
  List<Data>? data;
  Links? links;

  Comments({this.data, this.links});

  Comments.fromJson(Map<String, dynamic> json) {
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

class CanceledBy {
  Data? data;
  Links? links;

  CanceledBy({this.data, this.links});

  CanceledBy.fromJson(Map<String, dynamic> json) {
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

class Meta {
  Pagination? pagination;
  StatusCounts? statusCounts;

  Meta({this.pagination, this.statusCounts});

  Meta.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
    statusCounts = json['status-counts'] != null
        ? StatusCounts.fromJson(json['status-counts'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.pagination != null) {
      data['pagination'] = this.pagination?.toJson();
    }
    if (this.statusCounts != null) {
      data['status-counts'] = this.statusCounts?.toJson();
    }
    return data;
  }
}

class Pagination {
  int? currentPage;
  int? pageSize;
  Null? prevPage;
  Null? nextPage;
  int? totalPages;
  int? totalCount;

  Pagination(
      {this.currentPage,
      this.pageSize,
      this.prevPage,
      this.nextPage,
      this.totalPages,
      this.totalCount});

  Pagination.fromJson(Map<String, dynamic> json) {
    currentPage = json['current-page'];
    pageSize = json['page-size'];
    prevPage = json['prev-page'];
    nextPage = json['next-page'];
    totalPages = json['total-pages'];
    totalCount = json['total-count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.currentPage != null) {
      data['current-page'] = this.currentPage;
    }
    if (this.pageSize != null) {
      data['page-size'] = this.pageSize;
    }
    if (this.prevPage != null) {
      data['prev-page'] = this.prevPage;
    }
    if (this.nextPage != null) {
      data['next-page'] = this.nextPage;
    }
    if (this.totalPages != null) {
      data['total-pages'] = this.totalPages;
    }
    if (this.totalCount != null) {
      data['total-count'] = this.totalCount;
    }
    return data;
  }
}

class StatusCounts {
  int? pending;
  int? fetching;
  int? fetchingCompleted;
  int? prePlanRunning;
  int? prePlanCompleted;
  int? queuing;
  int? planQueued;
  int? planning;
  int? planned;
  int? confirmed;
  int? queuingApply;
  int? applyQueued;
  int? applying;
  int? applied;
  int? discarded;
  int? errored;
  int? canceled;
  int? costEstimating;
  int? costEstimated;
  int? policyChecking;
  int? policyOverride;
  int? policyChecked;
  int? policySoftFailed;
  int? plannedAndFinished;
  int? postPlanRunning;
  int? postPlanCompleted;
  int? preApplyRunning;
  int? preApplyCompleted;
  int? assessing;
  int? assessed;
  int? total;

  StatusCounts(
      {this.pending,
      this.fetching,
      this.fetchingCompleted,
      this.prePlanRunning,
      this.prePlanCompleted,
      this.queuing,
      this.planQueued,
      this.planning,
      this.planned,
      this.confirmed,
      this.queuingApply,
      this.applyQueued,
      this.applying,
      this.applied,
      this.discarded,
      this.errored,
      this.canceled,
      this.costEstimating,
      this.costEstimated,
      this.policyChecking,
      this.policyOverride,
      this.policyChecked,
      this.policySoftFailed,
      this.plannedAndFinished,
      this.postPlanRunning,
      this.postPlanCompleted,
      this.preApplyRunning,
      this.preApplyCompleted,
      this.assessing,
      this.assessed,
      this.total});

  StatusCounts.fromJson(Map<String, dynamic> json) {
    pending = json['pending'];
    fetching = json['fetching'];
    fetchingCompleted = json['fetching-completed'];
    prePlanRunning = json['pre-plan-running'];
    prePlanCompleted = json['pre-plan-completed'];
    queuing = json['queuing'];
    planQueued = json['plan-queued'];
    planning = json['planning'];
    planned = json['planned'];
    confirmed = json['confirmed'];
    queuingApply = json['queuing-apply'];
    applyQueued = json['apply-queued'];
    applying = json['applying'];
    applied = json['applied'];
    discarded = json['discarded'];
    errored = json['errored'];
    canceled = json['canceled'];
    costEstimating = json['cost-estimating'];
    costEstimated = json['cost-estimated'];
    policyChecking = json['policy-checking'];
    policyOverride = json['policy-override'];
    policyChecked = json['policy-checked'];
    policySoftFailed = json['policy-soft-failed'];
    plannedAndFinished = json['planned-and-finished'];
    postPlanRunning = json['post-plan-running'];
    postPlanCompleted = json['post-plan-completed'];
    preApplyRunning = json['pre-apply-running'];
    preApplyCompleted = json['pre-apply-completed'];
    assessing = json['assessing'];
    assessed = json['assessed'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.pending != null) {
      data['pending'] = this.pending;
    }
    if (this.fetching != null) {
      data['fetching'] = this.fetching;
    }
    if (this.fetchingCompleted != null) {
      data['fetching-completed'] = this.fetchingCompleted;
    }
    if (this.prePlanRunning != null) {
      data['pre-plan-running'] = this.prePlanRunning;
    }
    if (this.prePlanCompleted != null) {
      data['pre-plan-completed'] = this.prePlanCompleted;
    }
    if (this.queuing != null) {
      data['queuing'] = this.queuing;
    }
    if (this.planQueued != null) {
      data['plan-queued'] = this.planQueued;
    }
    if (this.planning != null) {
      data['planning'] = this.planning;
    }
    if (this.planned != null) {
      data['planned'] = this.planned;
    }
    if (this.confirmed != null) {
      data['confirmed'] = this.confirmed;
    }
    if (this.queuingApply != null) {
      data['queuing-apply'] = this.queuingApply;
    }
    if (this.applyQueued != null) {
      data['apply-queued'] = this.applyQueued;
    }
    if (this.applying != null) {
      data['applying'] = this.applying;
    }
    if (this.applied != null) {
      data['applied'] = this.applied;
    }
    if (this.discarded != null) {
      data['discarded'] = this.discarded;
    }
    if (this.errored != null) {
      data['errored'] = this.errored;
    }
    if (this.canceled != null) {
      data['canceled'] = this.canceled;
    }
    if (this.costEstimating != null) {
      data['cost-estimating'] = this.costEstimating;
    }
    if (this.costEstimated != null) {
      data['cost-estimated'] = this.costEstimated;
    }
    if (this.policyChecking != null) {
      data['policy-checking'] = this.policyChecking;
    }
    if (this.policyOverride != null) {
      data['policy-override'] = this.policyOverride;
    }
    if (this.policyChecked != null) {
      data['policy-checked'] = this.policyChecked;
    }
    if (this.policySoftFailed != null) {
      data['policy-soft-failed'] = this.policySoftFailed;
    }
    if (this.plannedAndFinished != null) {
      data['planned-and-finished'] = this.plannedAndFinished;
    }
    if (this.postPlanRunning != null) {
      data['post-plan-running'] = this.postPlanRunning;
    }
    if (this.postPlanCompleted != null) {
      data['post-plan-completed'] = this.postPlanCompleted;
    }
    if (this.preApplyRunning != null) {
      data['pre-apply-running'] = this.preApplyRunning;
    }
    if (this.preApplyCompleted != null) {
      data['pre-apply-completed'] = this.preApplyCompleted;
    }
    if (this.assessing != null) {
      data['assessing'] = this.assessing;
    }
    if (this.assessed != null) {
      data['assessed'] = this.assessed;
    }
    if (this.total != null) {
      data['total'] = this.total;
    }
    return data;
  }
}
