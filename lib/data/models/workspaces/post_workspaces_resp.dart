class PostWorkspacesResp {
  Data? data;

  PostWorkspacesResp({this.data});

  PostWorkspacesResp.fromJson(Map<String, dynamic> json) {
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
  bool? allowDestroyPlan;
  bool? autoApply;
  Null? autoDestroyAt;
  String? createdAt;
  String? environment;
  bool? locked;
  String? name;
  bool? pullRequestOutputsEnabled;
  bool? queueAllRuns;
  bool? speculativeEnabled;
  bool? structuredRunOutputEnabled;
  String? terraformVersion;
  Null? workingDirectory;
  bool? globalRemoteState;
  String? updatedAt;
  int? resourceCount;
  Null? applyDurationAverage;
  Null? planDurationAverage;
  Null? policyCheckFailures;
  Null? runFailures;
  Null? workspaceKpisRunsCount;
  String? latestChangeAt;
  bool? operations;
  String? executionMode;
  Null? vcsRepo;
  Null? vcsRepoIdentifier;
  Permissions? permissions;
  Actions? actions;
  Null? description;
  bool? fileTriggersEnabled;
  List? triggerPrefixes;
  List? triggerPatterns;
  bool? driftDetection;
  Null? lastAssessmentResultAt;
  String? source;
  Null? sourceName;
  Null? sourceUrl;
  List? tagNames;

  Attributes(
      {this.allowDestroyPlan,
      this.autoApply,
      this.autoDestroyAt,
      this.createdAt,
      this.environment,
      this.locked,
      this.name,
      this.pullRequestOutputsEnabled,
      this.queueAllRuns,
      this.speculativeEnabled,
      this.structuredRunOutputEnabled,
      this.terraformVersion,
      this.workingDirectory,
      this.globalRemoteState,
      this.updatedAt,
      this.resourceCount,
      this.applyDurationAverage,
      this.planDurationAverage,
      this.policyCheckFailures,
      this.runFailures,
      this.workspaceKpisRunsCount,
      this.latestChangeAt,
      this.operations,
      this.executionMode,
      this.vcsRepo,
      this.vcsRepoIdentifier,
      this.permissions,
      this.actions,
      this.description,
      this.fileTriggersEnabled,
      this.triggerPrefixes,
      this.triggerPatterns,
      this.driftDetection,
      this.lastAssessmentResultAt,
      this.source,
      this.sourceName,
      this.sourceUrl,
      this.tagNames});

  Attributes.fromJson(Map<String, dynamic> json) {
    allowDestroyPlan = json['allow-destroy-plan'];
    autoApply = json['auto-apply'];
    autoDestroyAt = json['auto-destroy-at'];
    createdAt = json['created-at'];
    environment = json['environment'];
    locked = json['locked'];
    name = json['name'];
    pullRequestOutputsEnabled = json['pull-request-outputs-enabled'];
    queueAllRuns = json['queue-all-runs'];
    speculativeEnabled = json['speculative-enabled'];
    structuredRunOutputEnabled = json['structured-run-output-enabled'];
    terraformVersion = json['terraform-version'];
    workingDirectory = json['working-directory'];
    globalRemoteState = json['global-remote-state'];
    updatedAt = json['updated-at'];
    resourceCount = json['resource-count'];
    applyDurationAverage = json['apply-duration-average'];
    planDurationAverage = json['plan-duration-average'];
    policyCheckFailures = json['policy-check-failures'];
    runFailures = json['run-failures'];
    workspaceKpisRunsCount = json['workspace-kpis-runs-count'];
    latestChangeAt = json['latest-change-at'];
    operations = json['operations'];
    executionMode = json['execution-mode'];
    vcsRepo = json['vcs-repo'];
    vcsRepoIdentifier = json['vcs-repo-identifier'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
    actions =
        json['actions'] != null ? Actions.fromJson(json['actions']) : null;
    description = json['description'];
    fileTriggersEnabled = json['file-triggers-enabled'];
    if (json['trigger-prefixes'] != null) {
      triggerPrefixes = [];
      json['trigger-prefixes'].forEach((v) {
        triggerPrefixes?.add(v);
      });
    }
    if (json['trigger-patterns'] != null) {
      triggerPatterns = [];
      json['trigger-patterns'].forEach((v) {
        triggerPatterns?.add(v);
      });
    }
    driftDetection = json['drift-detection'];
    lastAssessmentResultAt = json['last-assessment-result-at'];
    source = json['source'];
    sourceName = json['source-name'];
    sourceUrl = json['source-url'];
    if (json['tag-names'] != null) {
      tagNames = [];
      json['tag-names'].forEach((v) {
        tagNames?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.allowDestroyPlan != null) {
      data['allow-destroy-plan'] = this.allowDestroyPlan;
    }
    if (this.autoApply != null) {
      data['auto-apply'] = this.autoApply;
    }
    if (this.autoDestroyAt != null) {
      data['auto-destroy-at'] = this.autoDestroyAt;
    }
    if (this.createdAt != null) {
      data['created-at'] = this.createdAt;
    }
    if (this.environment != null) {
      data['environment'] = this.environment;
    }
    if (this.locked != null) {
      data['locked'] = this.locked;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.pullRequestOutputsEnabled != null) {
      data['pull-request-outputs-enabled'] = this.pullRequestOutputsEnabled;
    }
    if (this.queueAllRuns != null) {
      data['queue-all-runs'] = this.queueAllRuns;
    }
    if (this.speculativeEnabled != null) {
      data['speculative-enabled'] = this.speculativeEnabled;
    }
    if (this.structuredRunOutputEnabled != null) {
      data['structured-run-output-enabled'] = this.structuredRunOutputEnabled;
    }
    if (this.terraformVersion != null) {
      data['terraform-version'] = this.terraformVersion;
    }
    if (this.workingDirectory != null) {
      data['working-directory'] = this.workingDirectory;
    }
    if (this.globalRemoteState != null) {
      data['global-remote-state'] = this.globalRemoteState;
    }
    if (this.updatedAt != null) {
      data['updated-at'] = this.updatedAt;
    }
    if (this.resourceCount != null) {
      data['resource-count'] = this.resourceCount;
    }
    if (this.applyDurationAverage != null) {
      data['apply-duration-average'] = this.applyDurationAverage;
    }
    if (this.planDurationAverage != null) {
      data['plan-duration-average'] = this.planDurationAverage;
    }
    if (this.policyCheckFailures != null) {
      data['policy-check-failures'] = this.policyCheckFailures;
    }
    if (this.runFailures != null) {
      data['run-failures'] = this.runFailures;
    }
    if (this.workspaceKpisRunsCount != null) {
      data['workspace-kpis-runs-count'] = this.workspaceKpisRunsCount;
    }
    if (this.latestChangeAt != null) {
      data['latest-change-at'] = this.latestChangeAt;
    }
    if (this.operations != null) {
      data['operations'] = this.operations;
    }
    if (this.executionMode != null) {
      data['execution-mode'] = this.executionMode;
    }
    if (this.vcsRepo != null) {
      data['vcs-repo'] = this.vcsRepo;
    }
    if (this.vcsRepoIdentifier != null) {
      data['vcs-repo-identifier'] = this.vcsRepoIdentifier;
    }
    if (this.permissions != null) {
      data['permissions'] = this.permissions?.toJson();
    }
    if (this.actions != null) {
      data['actions'] = this.actions?.toJson();
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.fileTriggersEnabled != null) {
      data['file-triggers-enabled'] = this.fileTriggersEnabled;
    }
    if (this.triggerPrefixes != null) {
      data['trigger-prefixes'] = this.triggerPrefixes?.map((v) => v).toList();
    }
    if (this.triggerPatterns != null) {
      data['trigger-patterns'] = this.triggerPatterns?.map((v) => v).toList();
    }
    if (this.driftDetection != null) {
      data['drift-detection'] = this.driftDetection;
    }
    if (this.lastAssessmentResultAt != null) {
      data['last-assessment-result-at'] = this.lastAssessmentResultAt;
    }
    if (this.source != null) {
      data['source'] = this.source;
    }
    if (this.sourceName != null) {
      data['source-name'] = this.sourceName;
    }
    if (this.sourceUrl != null) {
      data['source-url'] = this.sourceUrl;
    }
    if (this.tagNames != null) {
      data['tag-names'] = this.tagNames?.map((v) => v).toList();
    }
    return data;
  }
}

class Permissions {
  bool? canUpdate;
  bool? canDestroy;
  bool? canQueueRun;
  bool? canReadVariable;
  bool? canUpdateVariable;
  bool? canReadStateVersions;
  bool? canReadStateOutputs;
  bool? canCreateStateVersions;
  bool? canQueueApply;
  bool? canLock;
  bool? canUnlock;
  bool? canForceUnlock;
  bool? canReadSettings;
  bool? canManageTags;
  bool? canManageRunTasks;
  bool? canManageAssessments;
  bool? canReadAssessmentResults;
  bool? canQueueDestroy;

  Permissions(
      {this.canUpdate,
      this.canDestroy,
      this.canQueueRun,
      this.canReadVariable,
      this.canUpdateVariable,
      this.canReadStateVersions,
      this.canReadStateOutputs,
      this.canCreateStateVersions,
      this.canQueueApply,
      this.canLock,
      this.canUnlock,
      this.canForceUnlock,
      this.canReadSettings,
      this.canManageTags,
      this.canManageRunTasks,
      this.canManageAssessments,
      this.canReadAssessmentResults,
      this.canQueueDestroy});

  Permissions.fromJson(Map<String, dynamic> json) {
    canUpdate = json['can-update'];
    canDestroy = json['can-destroy'];
    canQueueRun = json['can-queue-run'];
    canReadVariable = json['can-read-variable'];
    canUpdateVariable = json['can-update-variable'];
    canReadStateVersions = json['can-read-state-versions'];
    canReadStateOutputs = json['can-read-state-outputs'];
    canCreateStateVersions = json['can-create-state-versions'];
    canQueueApply = json['can-queue-apply'];
    canLock = json['can-lock'];
    canUnlock = json['can-unlock'];
    canForceUnlock = json['can-force-unlock'];
    canReadSettings = json['can-read-settings'];
    canManageTags = json['can-manage-tags'];
    canManageRunTasks = json['can-manage-run-tasks'];
    canManageAssessments = json['can-manage-assessments'];
    canReadAssessmentResults = json['can-read-assessment-results'];
    canQueueDestroy = json['can-queue-destroy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.canUpdate != null) {
      data['can-update'] = this.canUpdate;
    }
    if (this.canDestroy != null) {
      data['can-destroy'] = this.canDestroy;
    }
    if (this.canQueueRun != null) {
      data['can-queue-run'] = this.canQueueRun;
    }
    if (this.canReadVariable != null) {
      data['can-read-variable'] = this.canReadVariable;
    }
    if (this.canUpdateVariable != null) {
      data['can-update-variable'] = this.canUpdateVariable;
    }
    if (this.canReadStateVersions != null) {
      data['can-read-state-versions'] = this.canReadStateVersions;
    }
    if (this.canReadStateOutputs != null) {
      data['can-read-state-outputs'] = this.canReadStateOutputs;
    }
    if (this.canCreateStateVersions != null) {
      data['can-create-state-versions'] = this.canCreateStateVersions;
    }
    if (this.canQueueApply != null) {
      data['can-queue-apply'] = this.canQueueApply;
    }
    if (this.canLock != null) {
      data['can-lock'] = this.canLock;
    }
    if (this.canUnlock != null) {
      data['can-unlock'] = this.canUnlock;
    }
    if (this.canForceUnlock != null) {
      data['can-force-unlock'] = this.canForceUnlock;
    }
    if (this.canReadSettings != null) {
      data['can-read-settings'] = this.canReadSettings;
    }
    if (this.canManageTags != null) {
      data['can-manage-tags'] = this.canManageTags;
    }
    if (this.canManageRunTasks != null) {
      data['can-manage-run-tasks'] = this.canManageRunTasks;
    }
    if (this.canManageAssessments != null) {
      data['can-manage-assessments'] = this.canManageAssessments;
    }
    if (this.canReadAssessmentResults != null) {
      data['can-read-assessment-results'] = this.canReadAssessmentResults;
    }
    if (this.canQueueDestroy != null) {
      data['can-queue-destroy'] = this.canQueueDestroy;
    }
    return data;
  }
}

class Actions {
  bool? isDestroyable;

  Actions({this.isDestroyable});

  Actions.fromJson(Map<String, dynamic> json) {
    isDestroyable = json['is-destroyable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.isDestroyable != null) {
      data['is-destroyable'] = this.isDestroyable;
    }
    return data;
  }
}

class Relationships {
  Organization? organization;
  CurrentRun? currentRun;
  LatestRun? latestRun;
  Outputs? outputs;
  RemoteStateConsumers? remoteStateConsumers;
  CurrentStateVersion? currentStateVersion;
  CurrentConfigurationVersion? currentConfigurationVersion;
  AgentPool? agentPool;
  Readme? readme;
  CurrentAssessmentResult? currentAssessmentResult;
  Vars? vars;

  Relationships(
      {this.organization,
      this.currentRun,
      this.latestRun,
      this.outputs,
      this.remoteStateConsumers,
      this.currentStateVersion,
      this.currentConfigurationVersion,
      this.agentPool,
      this.readme,
      this.currentAssessmentResult,
      this.vars});

  Relationships.fromJson(Map<String, dynamic> json) {
    organization = json['organization'] != null
        ? Organization.fromJson(json['organization'])
        : null;
    currentRun = json['current-run'] != null
        ? CurrentRun.fromJson(json['current-run'])
        : null;
    latestRun = json['latest-run'] != null
        ? LatestRun.fromJson(json['latest-run'])
        : null;
    outputs =
        json['outputs'] != null ? Outputs.fromJson(json['outputs']) : null;
    remoteStateConsumers = json['remote-state-consumers'] != null
        ? RemoteStateConsumers.fromJson(json['remote-state-consumers'])
        : null;
    currentStateVersion = json['current-state-version'] != null
        ? CurrentStateVersion.fromJson(json['current-state-version'])
        : null;
    currentConfigurationVersion = json['current-configuration-version'] != null
        ? CurrentConfigurationVersion.fromJson(
            json['current-configuration-version'])
        : null;
    agentPool = json['agent-pool'] != null
        ? AgentPool.fromJson(json['agent-pool'])
        : null;
    readme = json['readme'] != null ? Readme.fromJson(json['readme']) : null;
    currentAssessmentResult = json['current-assessment-result'] != null
        ? CurrentAssessmentResult.fromJson(json['current-assessment-result'])
        : null;
    vars = json['vars'] != null ? Vars.fromJson(json['vars']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.organization != null) {
      data['organization'] = this.organization?.toJson();
    }
    if (this.currentRun != null) {
      data['current-run'] = this.currentRun?.toJson();
    }
    if (this.latestRun != null) {
      data['latest-run'] = this.latestRun?.toJson();
    }
    if (this.outputs != null) {
      data['outputs'] = this.outputs?.toJson();
    }
    if (this.remoteStateConsumers != null) {
      data['remote-state-consumers'] = this.remoteStateConsumers?.toJson();
    }
    if (this.currentStateVersion != null) {
      data['current-state-version'] = this.currentStateVersion?.toJson();
    }
    if (this.currentConfigurationVersion != null) {
      data['current-configuration-version'] =
          this.currentConfigurationVersion?.toJson();
    }
    if (this.agentPool != null) {
      data['agent-pool'] = this.agentPool?.toJson();
    }
    if (this.readme != null) {
      data['readme'] = this.readme?.toJson();
    }
    if (this.currentAssessmentResult != null) {
      data['current-assessment-result'] =
          this.currentAssessmentResult?.toJson();
    }
    if (this.vars != null) {
      data['vars'] = this.vars?.toJson();
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

class CurrentRun {
  Null? data;

  CurrentRun({this.data});

  CurrentRun.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data;
    }
    return data;
  }
}

class LatestRun {
  Null? data;

  LatestRun({this.data});

  LatestRun.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data;
    }
    return data;
  }
}

class Outputs {
  List? data;

  Outputs({this.data});

  Outputs.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v).toList();
    }
    return data;
  }
}

class RemoteStateConsumers {
  Links? links;

  RemoteStateConsumers({this.links});

  RemoteStateConsumers.fromJson(Map<String, dynamic> json) {
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

class CurrentStateVersion {
  Null? data;

  CurrentStateVersion({this.data});

  CurrentStateVersion.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data;
    }
    return data;
  }
}

class CurrentConfigurationVersion {
  Null? data;

  CurrentConfigurationVersion({this.data});

  CurrentConfigurationVersion.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data;
    }
    return data;
  }
}

class AgentPool {
  Null? data;

  AgentPool({this.data});

  AgentPool.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data;
    }
    return data;
  }
}

class Readme {
  Null? data;

  Readme({this.data});

  Readme.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data;
    }
    return data;
  }
}

class CurrentAssessmentResult {
  Null? data;

  CurrentAssessmentResult({this.data});

  CurrentAssessmentResult.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data;
    }
    return data;
  }
}

class Vars {
  List? data;

  Vars({this.data});

  Vars.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v).toList();
    }
    return data;
  }
}
