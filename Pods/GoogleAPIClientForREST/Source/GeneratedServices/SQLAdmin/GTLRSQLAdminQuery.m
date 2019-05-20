// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud SQL Admin API (sqladmin/v1beta4)
// Description:
//   Creates and manages Cloud SQL instances, which provide fully managed MySQL
//   or PostgreSQL databases.
// Documentation:
//   https://cloud.google.com/sql/docs/reference/latest

#import "GTLRSQLAdminQuery.h"

#import "GTLRSQLAdminObjects.h"

@implementation GTLRSQLAdminQuery

@dynamic fields;

@end

@implementation GTLRSQLAdminQuery_BackupRunsDelete

@dynamic identifier, instance, project;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"identifier" : @"id" };
}

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance
                      identifier:(long long)identifier {
  NSArray *pathParams = @[
    @"id", @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/backupRuns/{id}";
  GTLRSQLAdminQuery_BackupRunsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.identifier = identifier;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.backupRuns.delete";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_BackupRunsGet

@dynamic identifier, instance, project;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"identifier" : @"id" };
}

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance
                      identifier:(long long)identifier {
  NSArray *pathParams = @[
    @"id", @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/backupRuns/{id}";
  GTLRSQLAdminQuery_BackupRunsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.identifier = identifier;
  query.expectedObjectClass = [GTLRSQLAdmin_BackupRun class];
  query.loggingName = @"sql.backupRuns.get";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_BackupRunsInsert

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_BackupRun *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/backupRuns";
  GTLRSQLAdminQuery_BackupRunsInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.backupRuns.insert";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_BackupRunsList

@dynamic instance, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/backupRuns";
  GTLRSQLAdminQuery_BackupRunsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_BackupRunsListResponse class];
  query.loggingName = @"sql.backupRuns.list";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_DatabasesDelete

@dynamic database, instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance
                        database:(NSString *)database {
  NSArray *pathParams = @[
    @"database", @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/databases/{database}";
  GTLRSQLAdminQuery_DatabasesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.database = database;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.databases.delete";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_DatabasesGet

@dynamic database, instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance
                        database:(NSString *)database {
  NSArray *pathParams = @[
    @"database", @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/databases/{database}";
  GTLRSQLAdminQuery_DatabasesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.database = database;
  query.expectedObjectClass = [GTLRSQLAdmin_Database class];
  query.loggingName = @"sql.databases.get";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_DatabasesInsert

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_Database *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/databases";
  GTLRSQLAdminQuery_DatabasesInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.databases.insert";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_DatabasesList

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/databases";
  GTLRSQLAdminQuery_DatabasesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_DatabasesListResponse class];
  query.loggingName = @"sql.databases.list";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_DatabasesPatch

@dynamic database, instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_Database *)object
                        project:(NSString *)project
                       instance:(NSString *)instance
                       database:(NSString *)database {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"database", @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/databases/{database}";
  GTLRSQLAdminQuery_DatabasesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.database = database;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.databases.patch";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_DatabasesUpdate

@dynamic database, instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_Database *)object
                        project:(NSString *)project
                       instance:(NSString *)instance
                       database:(NSString *)database {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"database", @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/databases/{database}";
  GTLRSQLAdminQuery_DatabasesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.database = database;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.databases.update";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_FlagsList

@dynamic databaseVersion;

+ (instancetype)query {
  NSString *pathURITemplate = @"flags";
  GTLRSQLAdminQuery_FlagsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRSQLAdmin_FlagsListResponse class];
  query.loggingName = @"sql.flags.list";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesAddServerCa

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/addServerCa";
  GTLRSQLAdminQuery_InstancesAddServerCa *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.addServerCa";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesClone

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_InstancesCloneRequest *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/clone";
  GTLRSQLAdminQuery_InstancesClone *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.clone";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesDelete

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}";
  GTLRSQLAdminQuery_InstancesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.delete";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesDemoteMaster

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_InstancesDemoteMasterRequest *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/demoteMaster";
  GTLRSQLAdminQuery_InstancesDemoteMaster *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.demoteMaster";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesExport

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_InstancesExportRequest *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/export";
  GTLRSQLAdminQuery_InstancesExport *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.export";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesFailover

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_InstancesFailoverRequest *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/failover";
  GTLRSQLAdminQuery_InstancesFailover *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.failover";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesGet

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}";
  GTLRSQLAdminQuery_InstancesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_DatabaseInstance class];
  query.loggingName = @"sql.instances.get";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesImport

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_InstancesImportRequest *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/import";
  GTLRSQLAdminQuery_InstancesImport *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.import";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesInsert

@dynamic project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_DatabaseInstance *)object
                        project:(NSString *)project {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"projects/{project}/instances";
  GTLRSQLAdminQuery_InstancesInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.insert";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesList

@dynamic filter, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"projects/{project}/instances";
  GTLRSQLAdminQuery_InstancesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRSQLAdmin_InstancesListResponse class];
  query.loggingName = @"sql.instances.list";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesListServerCas

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/listServerCas";
  GTLRSQLAdminQuery_InstancesListServerCas *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_InstancesListServerCasResponse class];
  query.loggingName = @"sql.instances.listServerCas";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesPatch

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_DatabaseInstance *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}";
  GTLRSQLAdminQuery_InstancesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.patch";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesPromoteReplica

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/promoteReplica";
  GTLRSQLAdminQuery_InstancesPromoteReplica *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.promoteReplica";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesResetSslConfig

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/resetSslConfig";
  GTLRSQLAdminQuery_InstancesResetSslConfig *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.resetSslConfig";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesRestart

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/restart";
  GTLRSQLAdminQuery_InstancesRestart *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.restart";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesRestoreBackup

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_InstancesRestoreBackupRequest *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/restoreBackup";
  GTLRSQLAdminQuery_InstancesRestoreBackup *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.restoreBackup";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesRotateServerCa

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_InstancesRotateServerCaRequest *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/rotateServerCa";
  GTLRSQLAdminQuery_InstancesRotateServerCa *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.rotateServerCa";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesStartReplica

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/startReplica";
  GTLRSQLAdminQuery_InstancesStartReplica *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.startReplica";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesStopReplica

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/stopReplica";
  GTLRSQLAdminQuery_InstancesStopReplica *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.stopReplica";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesTruncateLog

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_InstancesTruncateLogRequest *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/truncateLog";
  GTLRSQLAdminQuery_InstancesTruncateLog *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.truncateLog";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_InstancesUpdate

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_DatabaseInstance *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}";
  GTLRSQLAdminQuery_InstancesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.instances.update";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_OperationsGet

@dynamic operation, project;

+ (instancetype)queryWithProject:(NSString *)project
                       operation:(NSString *)operation {
  NSArray *pathParams = @[
    @"operation", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/operations/{operation}";
  GTLRSQLAdminQuery_OperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.operation = operation;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.operations.get";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_OperationsList

@dynamic instance, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"projects/{project}/operations";
  GTLRSQLAdminQuery_OperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_OperationsListResponse class];
  query.loggingName = @"sql.operations.list";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_SslCertsCreateEphemeral

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_SslCertsCreateEphemeralRequest *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/createEphemeral";
  GTLRSQLAdminQuery_SslCertsCreateEphemeral *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_SslCert class];
  query.loggingName = @"sql.sslCerts.createEphemeral";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_SslCertsDelete

@dynamic instance, project, sha1Fingerprint;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance
                 sha1Fingerprint:(NSString *)sha1Fingerprint {
  NSArray *pathParams = @[
    @"instance", @"project", @"sha1Fingerprint"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}";
  GTLRSQLAdminQuery_SslCertsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.sha1Fingerprint = sha1Fingerprint;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.sslCerts.delete";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_SslCertsGet

@dynamic instance, project, sha1Fingerprint;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance
                 sha1Fingerprint:(NSString *)sha1Fingerprint {
  NSArray *pathParams = @[
    @"instance", @"project", @"sha1Fingerprint"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}";
  GTLRSQLAdminQuery_SslCertsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.sha1Fingerprint = sha1Fingerprint;
  query.expectedObjectClass = [GTLRSQLAdmin_SslCert class];
  query.loggingName = @"sql.sslCerts.get";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_SslCertsInsert

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_SslCertsInsertRequest *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/sslCerts";
  GTLRSQLAdminQuery_SslCertsInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_SslCertsInsertResponse class];
  query.loggingName = @"sql.sslCerts.insert";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_SslCertsList

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/sslCerts";
  GTLRSQLAdminQuery_SslCertsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_SslCertsListResponse class];
  query.loggingName = @"sql.sslCerts.list";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_TiersList

@dynamic project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"projects/{project}/tiers";
  GTLRSQLAdminQuery_TiersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRSQLAdmin_TiersListResponse class];
  query.loggingName = @"sql.tiers.list";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_UsersDelete

@dynamic host, instance, name, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance
                            host:(NSString *)host
                            name:(NSString *)name {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/users";
  GTLRSQLAdminQuery_UsersDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.host = host;
  query.name = name;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.users.delete";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_UsersInsert

@dynamic instance, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_User *)object
                        project:(NSString *)project
                       instance:(NSString *)instance {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/users";
  GTLRSQLAdminQuery_UsersInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.users.insert";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_UsersList

@dynamic instance, project;

+ (instancetype)queryWithProject:(NSString *)project
                        instance:(NSString *)instance {
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/users";
  GTLRSQLAdminQuery_UsersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.instance = instance;
  query.expectedObjectClass = [GTLRSQLAdmin_UsersListResponse class];
  query.loggingName = @"sql.users.list";
  return query;
}

@end

@implementation GTLRSQLAdminQuery_UsersUpdate

@dynamic host, instance, name, project;

+ (instancetype)queryWithObject:(GTLRSQLAdmin_User *)object
                        project:(NSString *)project
                       instance:(NSString *)instance
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"instance", @"project"
  ];
  NSString *pathURITemplate = @"projects/{project}/instances/{instance}/users";
  GTLRSQLAdminQuery_UsersUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.instance = instance;
  query.name = name;
  query.expectedObjectClass = [GTLRSQLAdmin_Operation class];
  query.loggingName = @"sql.users.update";
  return query;
}

@end
