// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Functions API (cloudfunctions/v1)
// Description:
//   Manages lightweight user-provided functions executed in response to events.
// Documentation:
//   https://cloud.google.com/functions

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRCloudFunctions_CallFunctionRequest;
@class GTLRCloudFunctions_CloudFunction;
@class GTLRCloudFunctions_GenerateDownloadUrlRequest;
@class GTLRCloudFunctions_GenerateUploadUrlRequest;
@class GTLRCloudFunctions_SetIamPolicyRequest;
@class GTLRCloudFunctions_TestIamPermissionsRequest;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Cloud Functions query classes.
 */
@interface GTLRCloudFunctionsQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  Method: cloudfunctions.operations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_OperationsGet : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForOperationsGetWithname:]

/** The name of the operation resource. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFunctions_Operation.
 *
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  @param name The name of the operation resource.
 *
 *  @return GTLRCloudFunctionsQuery_OperationsGet
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
 *  Method: cloudfunctions.operations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_OperationsList : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForOperationsList]

/**
 *  Required. A filter for matching the requested operations.<br><br> The
 *  supported formats of <b>filter</b> are:<br> To query for specific function:
 *  <code>project:*,location:*,function:*</code><br> To query for all of the
 *  latest operations for a project: <code>project:*,latest:true</code>
 */
@property(nonatomic, copy, nullable) NSString *filter;

/** Must not be set. */
@property(nonatomic, copy, nullable) NSString *name;

/** The standard list page size. */
@property(nonatomic, assign) NSInteger pageSize;

/** The standard list page token. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRCloudFunctions_ListOperationsResponse.
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
 *  @return GTLRCloudFunctionsQuery_OperationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)query;

@end

/**
 *  Synchronously invokes a deployed Cloud Function. To be used for testing
 *  purposes as very limited traffic is allowed. For more information on
 *  the actual limits, refer to
 *  [Rate Limits](https://cloud.google.com/functions/quotas#rate_limits).
 *
 *  Method: cloudfunctions.projects.locations.functions.call
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsCall : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsCallWithObject:name:]

/** The name of the function to be called. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFunctions_CallFunctionResponse.
 *
 *  Synchronously invokes a deployed Cloud Function. To be used for testing
 *  purposes as very limited traffic is allowed. For more information on
 *  the actual limits, refer to
 *  [Rate Limits](https://cloud.google.com/functions/quotas#rate_limits).
 *
 *  @param object The @c GTLRCloudFunctions_CallFunctionRequest to include in
 *    the query.
 *  @param name The name of the function to be called.
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsCall
 */
+ (instancetype)queryWithObject:(GTLRCloudFunctions_CallFunctionRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Creates a new function. If a function with the given name already exists in
 *  the specified project, the long running operation will return
 *  `ALREADY_EXISTS` error.
 *
 *  Method: cloudfunctions.projects.locations.functions.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsCreate : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsCreateWithObject:location:]

/**
 *  The project and location in which the function should be created, specified
 *  in the format `projects/ * /locations/ *`
 */
@property(nonatomic, copy, nullable) NSString *location;

/**
 *  Fetches a @c GTLRCloudFunctions_Operation.
 *
 *  Creates a new function. If a function with the given name already exists in
 *  the specified project, the long running operation will return
 *  `ALREADY_EXISTS` error.
 *
 *  @param object The @c GTLRCloudFunctions_CloudFunction to include in the
 *    query.
 *  @param location The project and location in which the function should be
 *    created, specified
 *    in the format `projects/ * /locations/ *`
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsCreate
 */
+ (instancetype)queryWithObject:(GTLRCloudFunctions_CloudFunction *)object
                       location:(NSString *)location;

@end

/**
 *  Deletes a function with the given name from the specified project. If the
 *  given function is used by some trigger, the trigger will be updated to
 *  remove this function.
 *
 *  Method: cloudfunctions.projects.locations.functions.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsDelete : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsDeleteWithname:]

/** The name of the function which should be deleted. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFunctions_Operation.
 *
 *  Deletes a function with the given name from the specified project. If the
 *  given function is used by some trigger, the trigger will be updated to
 *  remove this function.
 *
 *  @param name The name of the function which should be deleted.
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Returns a signed URL for downloading deployed function source code.
 *  The URL is only valid for a limited period and should be used within
 *  minutes after generation.
 *  For more information about the signed URL usage see:
 *  https://cloud.google.com/storage/docs/access-control/signed-urls
 *
 *  Method: cloudfunctions.projects.locations.functions.generateDownloadUrl
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsGenerateDownloadUrl : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsGenerateDownloadUrlWithObject:name:]

/**
 *  The name of function for which source code Google Cloud Storage signed
 *  URL should be generated.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFunctions_GenerateDownloadUrlResponse.
 *
 *  Returns a signed URL for downloading deployed function source code.
 *  The URL is only valid for a limited period and should be used within
 *  minutes after generation.
 *  For more information about the signed URL usage see:
 *  https://cloud.google.com/storage/docs/access-control/signed-urls
 *
 *  @param object The @c GTLRCloudFunctions_GenerateDownloadUrlRequest to
 *    include in the query.
 *  @param name The name of function for which source code Google Cloud Storage
 *    signed
 *    URL should be generated.
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsGenerateDownloadUrl
 */
+ (instancetype)queryWithObject:(GTLRCloudFunctions_GenerateDownloadUrlRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Returns a signed URL for uploading a function source code.
 *  For more information about the signed URL usage see:
 *  https://cloud.google.com/storage/docs/access-control/signed-urls.
 *  Once the function source code upload is complete, the used signed
 *  URL should be provided in CreateFunction or UpdateFunction request
 *  as a reference to the function source code.
 *  When uploading source code to the generated signed URL, please follow
 *  these restrictions:
 *  * Source file type should be a zip file.
 *  * Source file size should not exceed 100MB limit.
 *  * No credentials should be attached - the signed URLs provide access to the
 *  target bucket using internal service identity; if credentials were
 *  attached, the identity from the credentials would be used, but that
 *  identity does not have permissions to upload files to the URL.
 *  When making a HTTP PUT request, these two headers need to be specified:
 *  * `content-type: application/zip`
 *  * `x-goog-content-length-range: 0,104857600`
 *  And this header SHOULD NOT be specified:
 *  * `Authorization: Bearer YOUR_TOKEN`
 *
 *  Method: cloudfunctions.projects.locations.functions.generateUploadUrl
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsGenerateUploadUrl : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsGenerateUploadUrlWithObject:parent:]

/**
 *  The project and location in which the Google Cloud Storage signed URL
 *  should be generated, specified in the format `projects/ * /locations/ *`.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRCloudFunctions_GenerateUploadUrlResponse.
 *
 *  Returns a signed URL for uploading a function source code.
 *  For more information about the signed URL usage see:
 *  https://cloud.google.com/storage/docs/access-control/signed-urls.
 *  Once the function source code upload is complete, the used signed
 *  URL should be provided in CreateFunction or UpdateFunction request
 *  as a reference to the function source code.
 *  When uploading source code to the generated signed URL, please follow
 *  these restrictions:
 *  * Source file type should be a zip file.
 *  * Source file size should not exceed 100MB limit.
 *  * No credentials should be attached - the signed URLs provide access to the
 *  target bucket using internal service identity; if credentials were
 *  attached, the identity from the credentials would be used, but that
 *  identity does not have permissions to upload files to the URL.
 *  When making a HTTP PUT request, these two headers need to be specified:
 *  * `content-type: application/zip`
 *  * `x-goog-content-length-range: 0,104857600`
 *  And this header SHOULD NOT be specified:
 *  * `Authorization: Bearer YOUR_TOKEN`
 *
 *  @param object The @c GTLRCloudFunctions_GenerateUploadUrlRequest to include
 *    in the query.
 *  @param parent The project and location in which the Google Cloud Storage
 *    signed URL
 *    should be generated, specified in the format `projects/ * /locations/ *`.
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsGenerateUploadUrl
 */
+ (instancetype)queryWithObject:(GTLRCloudFunctions_GenerateUploadUrlRequest *)object
                         parent:(NSString *)parent;

@end

/**
 *  Returns a function with the given name from the requested project.
 *
 *  Method: cloudfunctions.projects.locations.functions.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsGet : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsGetWithname:]

/** The name of the function which details should be obtained. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFunctions_CloudFunction.
 *
 *  Returns a function with the given name from the requested project.
 *
 *  @param name The name of the function which details should be obtained.
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets the IAM access control policy for a function.
 *  Returns an empty policy if the function exists and does not have a policy
 *  set.
 *
 *  Method: cloudfunctions.projects.locations.functions.getIamPolicy
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsGetIamPolicy : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsGetIamPolicyWithresource:]

/**
 *  REQUIRED: The resource for which the policy is being requested.
 *  See the operation documentation for the appropriate value for this field.
 */
@property(nonatomic, copy, nullable) NSString *resource;

/**
 *  Fetches a @c GTLRCloudFunctions_Policy.
 *
 *  Gets the IAM access control policy for a function.
 *  Returns an empty policy if the function exists and does not have a policy
 *  set.
 *
 *  @param resource REQUIRED: The resource for which the policy is being
 *    requested.
 *    See the operation documentation for the appropriate value for this field.
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsGetIamPolicy
 */
+ (instancetype)queryWithResource:(NSString *)resource;

@end

/**
 *  Returns a list of functions that belong to the requested project.
 *
 *  Method: cloudfunctions.projects.locations.functions.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsList : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsListWithparent:]

/** Maximum number of functions to return per call. */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  The value returned by the last
 *  `ListFunctionsResponse`; indicates that
 *  this is a continuation of a prior `ListFunctions` call, and that the
 *  system should return the next page of data.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  The project and location from which the function should be listed,
 *  specified in the format `projects/ * /locations/ *`
 *  If you want to list functions in all locations, use "-" in place of a
 *  location.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRCloudFunctions_ListFunctionsResponse.
 *
 *  Returns a list of functions that belong to the requested project.
 *
 *  @param parent The project and location from which the function should be
 *    listed,
 *    specified in the format `projects/ * /locations/ *`
 *    If you want to list functions in all locations, use "-" in place of a
 *    location.
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Updates existing function.
 *
 *  Method: cloudfunctions.projects.locations.functions.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsPatch : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsPatchWithObject:name:]

/**
 *  A user-defined name of the function. Function names must be unique
 *  globally and match pattern `projects/ * /locations/ * /functions/ *`
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Required list of fields to be updated in this request.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

/**
 *  Fetches a @c GTLRCloudFunctions_Operation.
 *
 *  Updates existing function.
 *
 *  @param object The @c GTLRCloudFunctions_CloudFunction to include in the
 *    query.
 *  @param name A user-defined name of the function. Function names must be
 *    unique
 *    globally and match pattern `projects/ * /locations/ * /functions/ *`
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsPatch
 */
+ (instancetype)queryWithObject:(GTLRCloudFunctions_CloudFunction *)object
                           name:(NSString *)name;

@end

/**
 *  Sets the IAM access control policy on the specified function.
 *  Replaces any existing policy.
 *
 *  Method: cloudfunctions.projects.locations.functions.setIamPolicy
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsSetIamPolicy : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsSetIamPolicyWithObject:resource:]

/**
 *  REQUIRED: The resource for which the policy is being specified.
 *  See the operation documentation for the appropriate value for this field.
 */
@property(nonatomic, copy, nullable) NSString *resource;

/**
 *  Fetches a @c GTLRCloudFunctions_Policy.
 *
 *  Sets the IAM access control policy on the specified function.
 *  Replaces any existing policy.
 *
 *  @param object The @c GTLRCloudFunctions_SetIamPolicyRequest to include in
 *    the query.
 *  @param resource REQUIRED: The resource for which the policy is being
 *    specified.
 *    See the operation documentation for the appropriate value for this field.
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsSetIamPolicy
 */
+ (instancetype)queryWithObject:(GTLRCloudFunctions_SetIamPolicyRequest *)object
                       resource:(NSString *)resource;

@end

/**
 *  Tests the specified permissions against the IAM access control policy
 *  for a function.
 *  If the function does not exist, this will return an empty set of
 *  permissions, not a NOT_FOUND error.
 *
 *  Method: cloudfunctions.projects.locations.functions.testIamPermissions
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsTestIamPermissions : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsFunctionsTestIamPermissionsWithObject:resource:]

/**
 *  REQUIRED: The resource for which the policy detail is being requested.
 *  See the operation documentation for the appropriate value for this field.
 */
@property(nonatomic, copy, nullable) NSString *resource;

/**
 *  Fetches a @c GTLRCloudFunctions_TestIamPermissionsResponse.
 *
 *  Tests the specified permissions against the IAM access control policy
 *  for a function.
 *  If the function does not exist, this will return an empty set of
 *  permissions, not a NOT_FOUND error.
 *
 *  @param object The @c GTLRCloudFunctions_TestIamPermissionsRequest to include
 *    in the query.
 *  @param resource REQUIRED: The resource for which the policy detail is being
 *    requested.
 *    See the operation documentation for the appropriate value for this field.
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsFunctionsTestIamPermissions
 */
+ (instancetype)queryWithObject:(GTLRCloudFunctions_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource;

@end

/**
 *  Lists information about the supported locations for this service.
 *
 *  Method: cloudfunctions.projects.locations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFunctionsCloudPlatform
 */
@interface GTLRCloudFunctionsQuery_ProjectsLocationsList : GTLRCloudFunctionsQuery
// Previous library name was
//   +[GTLQueryCloudFunctions queryForProjectsLocationsListWithname:]

/** The standard list filter. */
@property(nonatomic, copy, nullable) NSString *filter;

/** The resource that owns the locations collection, if applicable. */
@property(nonatomic, copy, nullable) NSString *name;

/** The standard list page size. */
@property(nonatomic, assign) NSInteger pageSize;

/** The standard list page token. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRCloudFunctions_ListLocationsResponse.
 *
 *  Lists information about the supported locations for this service.
 *
 *  @param name The resource that owns the locations collection, if applicable.
 *
 *  @return GTLRCloudFunctionsQuery_ProjectsLocationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
