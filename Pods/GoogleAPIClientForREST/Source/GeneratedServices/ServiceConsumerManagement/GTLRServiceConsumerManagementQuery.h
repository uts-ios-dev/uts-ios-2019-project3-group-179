// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Service Consumer Management API (serviceconsumermanagement/v1)
// Description:
//   Manages the service consumers of a Service Infrastructure service.
// Documentation:
//   https://cloud.google.com/service-consumer-management/docs/overview

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRServiceConsumerManagement_AddTenantProjectRequest;
@class GTLRServiceConsumerManagement_ApplyTenantProjectConfigRequest;
@class GTLRServiceConsumerManagement_AttachTenantProjectRequest;
@class GTLRServiceConsumerManagement_CancelOperationRequest;
@class GTLRServiceConsumerManagement_CreateTenancyUnitRequest;
@class GTLRServiceConsumerManagement_DeleteTenantProjectRequest;
@class GTLRServiceConsumerManagement_RemoveTenantProjectRequest;
@class GTLRServiceConsumerManagement_UndeleteTenantProjectRequest;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Service Consumer Management query classes.
 */
@interface GTLRServiceConsumerManagementQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Starts asynchronous cancellation on a long-running operation. The server
 *  makes a best effort to cancel the operation, but success is not
 *  guaranteed. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`. Clients can use
 *  Operations.GetOperation or
 *  other methods to check whether the cancellation succeeded or whether the
 *  operation completed despite cancellation. On successful cancellation,
 *  the operation is not deleted; instead, it becomes an operation with
 *  an Operation.error value with a google.rpc.Status.code of 1,
 *  corresponding to `Code.CANCELLED`.
 *
 *  Method: serviceconsumermanagement.operations.cancel
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_OperationsCancel : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForOperationsCancelWithObject:name:]

/** The name of the operation resource to be cancelled. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_Empty.
 *
 *  Starts asynchronous cancellation on a long-running operation. The server
 *  makes a best effort to cancel the operation, but success is not
 *  guaranteed. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`. Clients can use
 *  Operations.GetOperation or
 *  other methods to check whether the cancellation succeeded or whether the
 *  operation completed despite cancellation. On successful cancellation,
 *  the operation is not deleted; instead, it becomes an operation with
 *  an Operation.error value with a google.rpc.Status.code of 1,
 *  corresponding to `Code.CANCELLED`.
 *
 *  @param object The @c GTLRServiceConsumerManagement_CancelOperationRequest to
 *    include in the query.
 *  @param name The name of the operation resource to be cancelled.
 *
 *  @return GTLRServiceConsumerManagementQuery_OperationsCancel
 */
+ (instancetype)queryWithObject:(GTLRServiceConsumerManagement_CancelOperationRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Deletes a long-running operation. This method indicates that the client is
 *  no longer interested in the operation result. It does not cancel the
 *  operation. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`.
 *
 *  Method: serviceconsumermanagement.operations.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_OperationsDelete : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForOperationsDeleteWithname:]

/** The name of the operation resource to be deleted. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_Empty.
 *
 *  Deletes a long-running operation. This method indicates that the client is
 *  no longer interested in the operation result. It does not cancel the
 *  operation. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`.
 *
 *  @param name The name of the operation resource to be deleted.
 *
 *  @return GTLRServiceConsumerManagementQuery_OperationsDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  Method: serviceconsumermanagement.operations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_OperationsGet : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForOperationsGetWithname:]

/** The name of the operation resource. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_Operation.
 *
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  @param name The name of the operation resource.
 *
 *  @return GTLRServiceConsumerManagementQuery_OperationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists operations that match the specified filter in the request. If the
 *  server doesn't support this method, it returns `UNIMPLEMENTED`.
 *  NOTE: the `name` binding allows API services to override the binding
 *  to use different resource name schemes, such as `users/ * /operations`. To
 *  override the binding, API services can add a binding such as
 *  `"/v1/{name=users/ *}/operations"` to their service configuration.
 *  For backwards compatibility, the default name includes the operations
 *  collection id, however overriding users must ensure the name binding
 *  is the parent resource, without the operations collection id.
 *
 *  Method: serviceconsumermanagement.operations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_OperationsList : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForOperationsListWithname:]

/** The standard list filter. */
@property(nonatomic, copy, nullable) NSString *filter;

/** The name of the operation's parent resource. */
@property(nonatomic, copy, nullable) NSString *name;

/** The standard list page size. */
@property(nonatomic, assign) NSInteger pageSize;

/** The standard list page token. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_ListOperationsResponse.
 *
 *  Lists operations that match the specified filter in the request. If the
 *  server doesn't support this method, it returns `UNIMPLEMENTED`.
 *  NOTE: the `name` binding allows API services to override the binding
 *  to use different resource name schemes, such as `users/ * /operations`. To
 *  override the binding, API services can add a binding such as
 *  `"/v1/{name=users/ *}/operations"` to their service configuration.
 *  For backwards compatibility, the default name includes the operations
 *  collection id, however overriding users must ensure the name binding
 *  is the parent resource, without the operations collection id.
 *
 *  @param name The name of the operation's parent resource.
 *
 *  @return GTLRServiceConsumerManagementQuery_OperationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Search tenancy units for a managed service.
 *
 *  Method: serviceconsumermanagement.services.search
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_ServicesSearch : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForServicesSearchWithparent:]

/**
 *  The maximum number of results returned by this request. Currently, the
 *  default maximum is set to 1000. If `page_size` isn't provided or the size
 *  provided is a number larger than 1000, it's automatically set to 1000.
 *  Optional.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  The continuation token, which is used to page through large result sets.
 *  To get the next page of results, set this parameter to the value of
 *  `nextPageToken` from the previous response.
 *  Optional.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Service for which search is performed.
 *  services/{service}
 *  {service} the name of a service, for example 'service.googleapis.com'.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Set a query `{expression}` for querying tenancy units. Your `{expression}`
 *  must be in the format: `field_name=literal_string`. The `field_name` is the
 *  name of the field you want to compare. Supported fields are
 *  `tenant_resources.tag` and `tenant_resources.resource`.
 *  For example, to search tenancy units that contain at least one tenant
 *  resource with a given tag 'xyz', use the query `tenant_resources.tag=xyz`.
 *  To search tenancy units that contain at least one tenant resource with
 *  a given resource name 'projects/123456', use the query
 *  `tenant_resources.resource=projects/123456`.
 *  Multiple expressions can be joined with `AND`s. Tenancy units must match
 *  all expressions to be included in the result set. For example,
 *  `tenant_resources.tag=xyz AND tenant_resources.resource=projects/123456`
 *  Optional.
 */
@property(nonatomic, copy, nullable) NSString *query;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_SearchTenancyUnitsResponse.
 *
 *  Search tenancy units for a managed service.
 *
 *  @param parent Service for which search is performed.
 *    services/{service}
 *    {service} the name of a service, for example 'service.googleapis.com'.
 *
 *  @return GTLRServiceConsumerManagementQuery_ServicesSearch
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Add a new tenant project to the tenancy unit.
 *  There can be a maximum of 512 tenant projects in a tenancy unit.
 *  If there are previously failed `AddTenantProject` calls, you might need to
 *  call `RemoveTenantProject` first to resolve them before you can make
 *  another call to `AddTenantProject` with the same tag.
 *  Operation<response: Empty>.
 *
 *  Method: serviceconsumermanagement.services.tenancyUnits.addProject
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsAddProject : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForServicesTenancyUnitsAddProjectWithObject:parent:]

/**
 *  Name of the tenancy unit.
 *  Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_Operation.
 *
 *  Add a new tenant project to the tenancy unit.
 *  There can be a maximum of 512 tenant projects in a tenancy unit.
 *  If there are previously failed `AddTenantProject` calls, you might need to
 *  call `RemoveTenantProject` first to resolve them before you can make
 *  another call to `AddTenantProject` with the same tag.
 *  Operation<response: Empty>.
 *
 *  @param object The @c GTLRServiceConsumerManagement_AddTenantProjectRequest
 *    to include in the query.
 *  @param parent Name of the tenancy unit.
 *    Such as
 *    'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 *
 *  @return GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsAddProject
 */
+ (instancetype)queryWithObject:(GTLRServiceConsumerManagement_AddTenantProjectRequest *)object
                         parent:(NSString *)parent;

@end

/**
 *  Apply a configuration to an existing tenant project.
 *  This project must exist in an active state and have the original owner
 *  account. The caller must have permission to add a project to the given
 *  tenancy unit. The configuration is applied, but any existing settings on
 *  the project aren't modified.
 *  Specified policy bindings are applied. Existing bindings aren't modified.
 *  Specified services are activated. No service is deactivated.
 *  If specified, new billing configuration is applied.
 *  Omit a billing configuration to keep the existing one.
 *  A service account in the project is created if previously non existed.
 *  Specified labels will be appended to tenant project, note that the value of
 *  existing label key will be updated if the same label key is requested.
 *  The specified folder is ignored, as moving a tenant project to a different
 *  folder isn't supported.
 *  The operation fails if any of the steps fail, but no rollback of already
 *  applied configuration changes is attempted.
 *  Operation<response: Empty>.
 *
 *  Method: serviceconsumermanagement.services.tenancyUnits.applyProjectConfig
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsApplyProjectConfig : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForServicesTenancyUnitsApplyProjectConfigWithObject:name:]

/**
 *  Name of the tenancy unit.
 *  Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_Operation.
 *
 *  Apply a configuration to an existing tenant project.
 *  This project must exist in an active state and have the original owner
 *  account. The caller must have permission to add a project to the given
 *  tenancy unit. The configuration is applied, but any existing settings on
 *  the project aren't modified.
 *  Specified policy bindings are applied. Existing bindings aren't modified.
 *  Specified services are activated. No service is deactivated.
 *  If specified, new billing configuration is applied.
 *  Omit a billing configuration to keep the existing one.
 *  A service account in the project is created if previously non existed.
 *  Specified labels will be appended to tenant project, note that the value of
 *  existing label key will be updated if the same label key is requested.
 *  The specified folder is ignored, as moving a tenant project to a different
 *  folder isn't supported.
 *  The operation fails if any of the steps fail, but no rollback of already
 *  applied configuration changes is attempted.
 *  Operation<response: Empty>.
 *
 *  @param object The @c
 *    GTLRServiceConsumerManagement_ApplyTenantProjectConfigRequest to include
 *    in the query.
 *  @param name Name of the tenancy unit.
 *    Such as
 *    'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 *
 *  @return GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsApplyProjectConfig
 */
+ (instancetype)queryWithObject:(GTLRServiceConsumerManagement_ApplyTenantProjectConfigRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Attach an existing project to the tenancy unit as a new tenant
 *  resource. The project could either be the tenant project reserved by
 *  calling `AddTenantProject` under a tenancy unit of a service producer's
 *  project of a managed service, or from a separate project.
 *  The caller is checked against a set of permissions as if calling
 *  `AddTenantProject` on the same service consumer.
 *  To trigger the attachment, the targeted tenant project must be in a
 *  folder. Make sure the ServiceConsumerManagement service account is
 *  the owner of that project. These two requirements are already met
 *  if the project is reserved by calling `AddTenantProject`.
 *  Operation<response: Empty>.
 *
 *  Method: serviceconsumermanagement.services.tenancyUnits.attachProject
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsAttachProject : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForServicesTenancyUnitsAttachProjectWithObject:name:]

/**
 *  Name of the tenancy unit that the project will be attached to.
 *  Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_Operation.
 *
 *  Attach an existing project to the tenancy unit as a new tenant
 *  resource. The project could either be the tenant project reserved by
 *  calling `AddTenantProject` under a tenancy unit of a service producer's
 *  project of a managed service, or from a separate project.
 *  The caller is checked against a set of permissions as if calling
 *  `AddTenantProject` on the same service consumer.
 *  To trigger the attachment, the targeted tenant project must be in a
 *  folder. Make sure the ServiceConsumerManagement service account is
 *  the owner of that project. These two requirements are already met
 *  if the project is reserved by calling `AddTenantProject`.
 *  Operation<response: Empty>.
 *
 *  @param object The @c
 *    GTLRServiceConsumerManagement_AttachTenantProjectRequest to include in the
 *    query.
 *  @param name Name of the tenancy unit that the project will be attached to.
 *    Such as
 *    'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 *
 *  @return GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsAttachProject
 */
+ (instancetype)queryWithObject:(GTLRServiceConsumerManagement_AttachTenantProjectRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Creates a tenancy unit with no tenant resources.
 *
 *  Method: serviceconsumermanagement.services.tenancyUnits.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsCreate : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForServicesTenancyUnitsCreateWithObject:parent:]

/**
 *  services/{service}/{collection id}/{resource id}
 *  {collection id} is the cloud resource collection type representing the
 *  service consumer, for example 'projects', or 'organizations'.
 *  {resource id} is the consumer numeric id, such as project number: '123456'.
 *  {service} the name of a managed service, such as 'service.googleapis.com'.
 *  Enables service binding using the new tenancy unit.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_TenancyUnit.
 *
 *  Creates a tenancy unit with no tenant resources.
 *
 *  @param object The @c GTLRServiceConsumerManagement_CreateTenancyUnitRequest
 *    to include in the query.
 *  @param parent services/{service}/{collection id}/{resource id}
 *    {collection id} is the cloud resource collection type representing the
 *    service consumer, for example 'projects', or 'organizations'.
 *    {resource id} is the consumer numeric id, such as project number:
 *    '123456'.
 *    {service} the name of a managed service, such as 'service.googleapis.com'.
 *    Enables service binding using the new tenancy unit.
 *
 *  @return GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsCreate
 */
+ (instancetype)queryWithObject:(GTLRServiceConsumerManagement_CreateTenancyUnitRequest *)object
                         parent:(NSString *)parent;

@end

/**
 *  Delete a tenancy unit. Before you delete the tenancy unit, there should be
 *  no tenant resources in it that aren't in a DELETED state.
 *  Operation<response: Empty>.
 *
 *  Method: serviceconsumermanagement.services.tenancyUnits.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsDelete : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForServicesTenancyUnitsDeleteWithname:]

/** Name of the tenancy unit to be deleted. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_Operation.
 *
 *  Delete a tenancy unit. Before you delete the tenancy unit, there should be
 *  no tenant resources in it that aren't in a DELETED state.
 *  Operation<response: Empty>.
 *
 *  @param name Name of the tenancy unit to be deleted.
 *
 *  @return GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Deletes the specified project resource identified by a tenant resource tag.
 *  The mothod removes a project lien with a 'TenantManager' origin if that was
 *  added. It will then attempt to delete the project. If that operation fails,
 *  this method also fails.
 *  After the project has been deleted, the tenant resource state is set to
 *  DELETED. To permanently remove resource metadata, call the
 *  `RemoveTenantProject` method.
 *  New resources with the same tag can't be added if there are existing
 *  resources in a DELETED state.
 *  Operation<response: Empty>.
 *
 *  Method: serviceconsumermanagement.services.tenancyUnits.deleteProject
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsDeleteProject : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForServicesTenancyUnitsDeleteProjectWithObject:name:]

/**
 *  Name of the tenancy unit.
 *  Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_Operation.
 *
 *  Deletes the specified project resource identified by a tenant resource tag.
 *  The mothod removes a project lien with a 'TenantManager' origin if that was
 *  added. It will then attempt to delete the project. If that operation fails,
 *  this method also fails.
 *  After the project has been deleted, the tenant resource state is set to
 *  DELETED. To permanently remove resource metadata, call the
 *  `RemoveTenantProject` method.
 *  New resources with the same tag can't be added if there are existing
 *  resources in a DELETED state.
 *  Operation<response: Empty>.
 *
 *  @param object The @c
 *    GTLRServiceConsumerManagement_DeleteTenantProjectRequest to include in the
 *    query.
 *  @param name Name of the tenancy unit.
 *    Such as
 *    'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 *
 *  @return GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsDeleteProject
 */
+ (instancetype)queryWithObject:(GTLRServiceConsumerManagement_DeleteTenantProjectRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Find the tenancy unit for a managed service and service consumer.
 *  This method shouldn't be used in a service producer's runtime path, for
 *  example to find the tenant project number when creating VMs. Service
 *  producers must persist the tenant project's information after the project
 *  is created.
 *
 *  Method: serviceconsumermanagement.services.tenancyUnits.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsList : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForServicesTenancyUnitsListWithparent:]

/** Filter expression over tenancy resources field. Optional. */
@property(nonatomic, copy, nullable) NSString *filter;

/** The maximum number of results returned by this request. */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  The continuation token, which is used to page through large result sets.
 *  To get the next page of results, set this parameter to the value of
 *  `nextPageToken` from the previous response.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Managed service and service consumer. Required.
 *  services/{service}/{collection id}/{resource id}
 *  {collection id} is the cloud resource collection type representing the
 *  service consumer, for example 'projects', or 'organizations'.
 *  {resource id} is the consumer numeric id, such as project number: '123456'.
 *  {service} the name of a service, such as 'service.googleapis.com'.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_ListTenancyUnitsResponse.
 *
 *  Find the tenancy unit for a managed service and service consumer.
 *  This method shouldn't be used in a service producer's runtime path, for
 *  example to find the tenant project number when creating VMs. Service
 *  producers must persist the tenant project's information after the project
 *  is created.
 *
 *  @param parent Managed service and service consumer. Required.
 *    services/{service}/{collection id}/{resource id}
 *    {collection id} is the cloud resource collection type representing the
 *    service consumer, for example 'projects', or 'organizations'.
 *    {resource id} is the consumer numeric id, such as project number:
 *    '123456'.
 *    {service} the name of a service, such as 'service.googleapis.com'.
 *
 *  @return GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Removes the specified project resource identified by a tenant resource tag.
 *  The method removes the project lien with 'TenantManager' origin if that
 *  was added. It then attempts to delete the project. If that operation
 *  fails, this method also fails.
 *  Calls to remove already removed or non-existent tenant project succeed.
 *  After the project has been deleted, or if was already in a DELETED state,
 *  resource metadata is permanently removed from the tenancy unit.
 *  Operation<response: Empty>.
 *
 *  Method: serviceconsumermanagement.services.tenancyUnits.removeProject
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsRemoveProject : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForServicesTenancyUnitsRemoveProjectWithObject:name:]

/**
 *  Name of the tenancy unit.
 *  Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_Operation.
 *
 *  Removes the specified project resource identified by a tenant resource tag.
 *  The method removes the project lien with 'TenantManager' origin if that
 *  was added. It then attempts to delete the project. If that operation
 *  fails, this method also fails.
 *  Calls to remove already removed or non-existent tenant project succeed.
 *  After the project has been deleted, or if was already in a DELETED state,
 *  resource metadata is permanently removed from the tenancy unit.
 *  Operation<response: Empty>.
 *
 *  @param object The @c
 *    GTLRServiceConsumerManagement_RemoveTenantProjectRequest to include in the
 *    query.
 *  @param name Name of the tenancy unit.
 *    Such as
 *    'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 *
 *  @return GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsRemoveProject
 */
+ (instancetype)queryWithObject:(GTLRServiceConsumerManagement_RemoveTenantProjectRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Attempts to undelete a previously deleted tenant project. The project must
 *  be in a DELETED state.
 *  There are no guarantees that an undeleted project will be in
 *  a fully restored and functional state. Call the `ApplyTenantProjectConfig`
 *  method to update its configuration and then validate all managed service
 *  resources.
 *  Operation<response: Empty>.
 *
 *  Method: serviceconsumermanagement.services.tenancyUnits.undeleteProject
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceConsumerManagementCloudPlatform
 */
@interface GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsUndeleteProject : GTLRServiceConsumerManagementQuery
// Previous library name was
//   +[GTLQueryServiceConsumerManagement queryForServicesTenancyUnitsUndeleteProjectWithObject:name:]

/**
 *  Name of the tenancy unit.
 *  Such as 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRServiceConsumerManagement_Operation.
 *
 *  Attempts to undelete a previously deleted tenant project. The project must
 *  be in a DELETED state.
 *  There are no guarantees that an undeleted project will be in
 *  a fully restored and functional state. Call the `ApplyTenantProjectConfig`
 *  method to update its configuration and then validate all managed service
 *  resources.
 *  Operation<response: Empty>.
 *
 *  @param object The @c
 *    GTLRServiceConsumerManagement_UndeleteTenantProjectRequest to include in
 *    the query.
 *  @param name Name of the tenancy unit.
 *    Such as
 *    'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
 *
 *  @return GTLRServiceConsumerManagementQuery_ServicesTenancyUnitsUndeleteProject
 */
+ (instancetype)queryWithObject:(GTLRServiceConsumerManagement_UndeleteTenantProjectRequest *)object
                           name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
