// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Composer API (composer/v1)
// Description:
//   Manages Apache Airflow environments on Google Cloud Platform.
// Documentation:
//   https://cloud.google.com/composer/

#import "GTLRCloudComposerObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRCloudComposer_Environment.state
NSString * const kGTLRCloudComposer_Environment_State_Creating = @"CREATING";
NSString * const kGTLRCloudComposer_Environment_State_Deleting = @"DELETING";
NSString * const kGTLRCloudComposer_Environment_State_Error    = @"ERROR";
NSString * const kGTLRCloudComposer_Environment_State_Running  = @"RUNNING";
NSString * const kGTLRCloudComposer_Environment_State_StateUnspecified = @"STATE_UNSPECIFIED";
NSString * const kGTLRCloudComposer_Environment_State_Updating = @"UPDATING";

// GTLRCloudComposer_OperationMetadata.operationType
NSString * const kGTLRCloudComposer_OperationMetadata_OperationType_Create = @"CREATE";
NSString * const kGTLRCloudComposer_OperationMetadata_OperationType_Delete = @"DELETE";
NSString * const kGTLRCloudComposer_OperationMetadata_OperationType_TypeUnspecified = @"TYPE_UNSPECIFIED";
NSString * const kGTLRCloudComposer_OperationMetadata_OperationType_Update = @"UPDATE";

// GTLRCloudComposer_OperationMetadata.state
NSString * const kGTLRCloudComposer_OperationMetadata_State_Failed = @"FAILED";
NSString * const kGTLRCloudComposer_OperationMetadata_State_Pending = @"PENDING";
NSString * const kGTLRCloudComposer_OperationMetadata_State_Running = @"RUNNING";
NSString * const kGTLRCloudComposer_OperationMetadata_State_StateUnspecified = @"STATE_UNSPECIFIED";
NSString * const kGTLRCloudComposer_OperationMetadata_State_Succeeded = @"SUCCEEDED";
NSString * const kGTLRCloudComposer_OperationMetadata_State_Successful = @"SUCCESSFUL";

// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_Empty
//

@implementation GTLRCloudComposer_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_Environment
//

@implementation GTLRCloudComposer_Environment
@dynamic config, createTime, labels, name, state, updateTime, uuid;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_Environment_Labels
//

@implementation GTLRCloudComposer_Environment_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_EnvironmentConfig
//

@implementation GTLRCloudComposer_EnvironmentConfig
@dynamic airflowUri, dagGcsPrefix, gkeCluster, nodeConfig, nodeCount,
         softwareConfig;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_ImageVersion
//

@implementation GTLRCloudComposer_ImageVersion
@dynamic imageVersionId, isDefault, supportedPythonVersions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"supportedPythonVersions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_ListEnvironmentsResponse
//

@implementation GTLRCloudComposer_ListEnvironmentsResponse
@dynamic environments, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"environments" : [GTLRCloudComposer_Environment class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"environments";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_ListImageVersionsResponse
//

@implementation GTLRCloudComposer_ListImageVersionsResponse
@dynamic imageVersions, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"imageVersions" : [GTLRCloudComposer_ImageVersion class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"imageVersions";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_ListOperationsResponse
//

@implementation GTLRCloudComposer_ListOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRCloudComposer_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_NodeConfig
//

@implementation GTLRCloudComposer_NodeConfig
@dynamic diskSizeGb, location, machineType, network, oauthScopes,
         serviceAccount, subnetwork, tags;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"oauthScopes" : [NSString class],
    @"tags" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_Operation
//

@implementation GTLRCloudComposer_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_Operation_Metadata
//

@implementation GTLRCloudComposer_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_Operation_Response
//

@implementation GTLRCloudComposer_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_OperationMetadata
//

@implementation GTLRCloudComposer_OperationMetadata
@dynamic createTime, endTime, operationType, resource, resourceUuid, state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_SoftwareConfig
//

@implementation GTLRCloudComposer_SoftwareConfig
@dynamic airflowConfigOverrides, envVariables, imageVersion, pypiPackages,
         pythonVersion;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_SoftwareConfig_AirflowConfigOverrides
//

@implementation GTLRCloudComposer_SoftwareConfig_AirflowConfigOverrides

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_SoftwareConfig_EnvVariables
//

@implementation GTLRCloudComposer_SoftwareConfig_EnvVariables

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_SoftwareConfig_PypiPackages
//

@implementation GTLRCloudComposer_SoftwareConfig_PypiPackages

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_Status
//

@implementation GTLRCloudComposer_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRCloudComposer_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudComposer_Status_Details_Item
//

@implementation GTLRCloudComposer_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end
