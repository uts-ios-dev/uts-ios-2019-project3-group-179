// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   API Discovery Service (discovery/v1)
// Description:
//   Provides information about other Google APIs, such as what APIs are
//   available, the resource, and method details for each API.
// Documentation:
//   https://developers.google.com/discovery/

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRObject.h"
#else
  #import "GTLRObject.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRDiscovery_DirectoryList_Items_Item;
@class GTLRDiscovery_DirectoryList_Items_Item_Icons;
@class GTLRDiscovery_JsonSchema;
@class GTLRDiscovery_JsonSchema_Annotations;
@class GTLRDiscovery_JsonSchema_Properties;
@class GTLRDiscovery_JsonSchema_Variant;
@class GTLRDiscovery_JsonSchema_Variant_Map_Item;
@class GTLRDiscovery_RestDescription_Auth;
@class GTLRDiscovery_RestDescription_Auth_Oauth2;
@class GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes;
@class GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes_Scope;
@class GTLRDiscovery_RestDescription_Icons;
@class GTLRDiscovery_RestDescription_Methods;
@class GTLRDiscovery_RestDescription_Parameters;
@class GTLRDiscovery_RestDescription_Resources;
@class GTLRDiscovery_RestDescription_Schemas;
@class GTLRDiscovery_RestMethod;
@class GTLRDiscovery_RestMethod_MediaUpload;
@class GTLRDiscovery_RestMethod_MediaUpload_Protocols;
@class GTLRDiscovery_RestMethod_MediaUpload_Protocols_Resumable;
@class GTLRDiscovery_RestMethod_MediaUpload_Protocols_Simple;
@class GTLRDiscovery_RestMethod_Parameters;
@class GTLRDiscovery_RestMethod_Request;
@class GTLRDiscovery_RestMethod_Response;
@class GTLRDiscovery_RestResource;
@class GTLRDiscovery_RestResource_Methods;
@class GTLRDiscovery_RestResource_Resources;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  GTLRDiscovery_DirectoryList
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "items" property.
 */
@interface GTLRDiscovery_DirectoryList : GTLRCollectionObject

/** Indicate the version of the Discovery API used to generate this doc. */
@property(nonatomic, copy, nullable) NSString *discoveryVersion;

/**
 *  The individual directory entries. One entry per api/version pair.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRDiscovery_DirectoryList_Items_Item *> *items;

/** The kind for this response. */
@property(nonatomic, copy, nullable) NSString *kind;

@end


/**
 *  GTLRDiscovery_DirectoryList_Items_Item
 */
@interface GTLRDiscovery_DirectoryList_Items_Item : GTLRObject

/**
 *  The description of this API.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/** A link to the discovery document. */
@property(nonatomic, copy, nullable) NSString *discoveryLink;

/** The URL for the discovery REST document. */
@property(nonatomic, copy, nullable) NSString *discoveryRestUrl;

/** A link to human readable documentation for the API. */
@property(nonatomic, copy, nullable) NSString *documentationLink;

/** Links to 16x16 and 32x32 icons representing the API. */
@property(nonatomic, strong, nullable) GTLRDiscovery_DirectoryList_Items_Item_Icons *icons;

/**
 *  The id of this API.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/** The kind for this response. */
@property(nonatomic, copy, nullable) NSString *kind;

/** Labels for the status of this API, such as labs or deprecated. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *labels;

/** The name of the API. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  True if this version is the preferred version to use.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *preferred;

/** The title of this API. */
@property(nonatomic, copy, nullable) NSString *title;

/** The version of the API. */
@property(nonatomic, copy, nullable) NSString *version;

@end


/**
 *  Links to 16x16 and 32x32 icons representing the API.
 */
@interface GTLRDiscovery_DirectoryList_Items_Item_Icons : GTLRObject

/** The URL of the 16x16 icon. */
@property(nonatomic, copy, nullable) NSString *x16;

/** The URL of the 32x32 icon. */
@property(nonatomic, copy, nullable) NSString *x32;

@end


/**
 *  GTLRDiscovery_JsonSchema
 */
@interface GTLRDiscovery_JsonSchema : GTLRObject

/**
 *  A reference to another schema. The value of this property is the "id" of
 *  another schema.
 */
@property(nonatomic, copy, nullable) NSString *xRef;

/**
 *  If this is a schema for an object, this property is the schema for any
 *  additional properties with dynamic keys on this object.
 *
 *  Remapped to 'additionalPropertiesProperty' to avoid GTLRObject's
 *  'additionalProperties'.
 */
@property(nonatomic, strong, nullable) GTLRDiscovery_JsonSchema *additionalPropertiesProperty;

/** Additional information about this property. */
@property(nonatomic, strong, nullable) GTLRDiscovery_JsonSchema_Annotations *annotations;

/**
 *  The default value of this property (if one exists).
 *
 *  Remapped to 'defaultProperty' to avoid language reserved word 'default'.
 */
@property(nonatomic, copy, nullable) NSString *defaultProperty;

/**
 *  A description of this object.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/**
 *  Values this parameter may take (if it is an enum).
 *
 *  Remapped to 'enumProperty' to avoid language reserved word 'enum'.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *enumProperty;

/**
 *  The descriptions for the enums. Each position maps to the corresponding
 *  value in the "enum" array.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *enumDescriptions;

/**
 *  An additional regular expression or key that helps constrain the value. For
 *  more details see:
 *  http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.23
 */
@property(nonatomic, copy, nullable) NSString *format;

/**
 *  Unique identifier for this schema.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  If this is a schema for an array, this property is the schema for each
 *  element in the array.
 */
@property(nonatomic, strong, nullable) GTLRDiscovery_JsonSchema *items;

/** Whether this parameter goes in the query or the path for REST requests. */
@property(nonatomic, copy, nullable) NSString *location;

/** The maximum value of this parameter. */
@property(nonatomic, copy, nullable) NSString *maximum;

/** The minimum value of this parameter. */
@property(nonatomic, copy, nullable) NSString *minimum;

/**
 *  The regular expression this parameter must conform to. Uses Java 6 regex
 *  format:
 *  http://docs.oracle.com/javase/6/docs/api/java/util/regex/Pattern.html
 */
@property(nonatomic, copy, nullable) NSString *pattern;

/**
 *  If this is a schema for an object, list the schema for each property of this
 *  object.
 */
@property(nonatomic, strong, nullable) GTLRDiscovery_JsonSchema_Properties *properties;

/**
 *  The value is read-only, generated by the service. The value cannot be
 *  modified by the client. If the value is included in a POST, PUT, or PATCH
 *  request, it is ignored by the service.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *readOnly;

/**
 *  Whether this parameter may appear multiple times.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *repeated;

/**
 *  Whether the parameter is required.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *required;

/**
 *  The value type for this schema. A list of values can be found here:
 *  http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.1
 */
@property(nonatomic, copy, nullable) NSString *type;

/**
 *  In a variant data type, the value of one property is used to determine how
 *  to interpret the entire entity. Its value must exist in a map of
 *  descriminant values to schema names.
 */
@property(nonatomic, strong, nullable) GTLRDiscovery_JsonSchema_Variant *variant;

@end


/**
 *  Additional information about this property.
 */
@interface GTLRDiscovery_JsonSchema_Annotations : GTLRObject

/** A list of methods for which this property is required on requests. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *required;

@end


/**
 *  If this is a schema for an object, list the schema for each property of this
 *  object.
 *
 *  @note This class is documented as having more properties of
 *        GTLRDiscovery_JsonSchema. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRDiscovery_JsonSchema_Properties : GTLRObject
@end


/**
 *  In a variant data type, the value of one property is used to determine how
 *  to interpret the entire entity. Its value must exist in a map of
 *  descriminant values to schema names.
 */
@interface GTLRDiscovery_JsonSchema_Variant : GTLRObject

/** The name of the type discriminant property. */
@property(nonatomic, copy, nullable) NSString *discriminant;

/** The map of discriminant value to schema to use for parsing.. */
@property(nonatomic, strong, nullable) NSArray<GTLRDiscovery_JsonSchema_Variant_Map_Item *> *map;

@end


/**
 *  GTLRDiscovery_JsonSchema_Variant_Map_Item
 */
@interface GTLRDiscovery_JsonSchema_Variant_Map_Item : GTLRObject

@property(nonatomic, copy, nullable) NSString *xRef;
@property(nonatomic, copy, nullable) NSString *typeValue;

@end


/**
 *  GTLRDiscovery_RestDescription
 */
@interface GTLRDiscovery_RestDescription : GTLRObject

/** Authentication information. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestDescription_Auth *auth;

/** [DEPRECATED] The base path for REST requests. */
@property(nonatomic, copy, nullable) NSString *basePath;

/** [DEPRECATED] The base URL for REST requests. */
@property(nonatomic, copy, nullable) NSString *baseUrl;

/** The path for REST batch requests. */
@property(nonatomic, copy, nullable) NSString *batchPath;

/**
 *  Indicates how the API name should be capitalized and split into various
 *  parts. Useful for generating pretty class names.
 */
@property(nonatomic, copy, nullable) NSString *canonicalName;

/**
 *  The description of this API.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/** Indicate the version of the Discovery API used to generate this doc. */
@property(nonatomic, copy, nullable) NSString *discoveryVersion;

/** A link to human readable documentation for the API. */
@property(nonatomic, copy, nullable) NSString *documentationLink;

/** The ETag for this response. */
@property(nonatomic, copy, nullable) NSString *ETag;

/**
 *  Enable exponential backoff for suitable methods in the generated clients.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *exponentialBackoffDefault;

/** A list of supported features for this API. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *features;

/** Links to 16x16 and 32x32 icons representing the API. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestDescription_Icons *icons;

/**
 *  The ID of this API.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/** The kind for this response. */
@property(nonatomic, copy, nullable) NSString *kind;

/** Labels for the status of this API, such as labs or deprecated. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *labels;

/** API-level methods for this API. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestDescription_Methods *methods;

/** The name of this API. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The domain of the owner of this API. Together with the ownerName and a
 *  packagePath values, this can be used to generate a library for this API
 *  which would have a unique fully qualified name.
 */
@property(nonatomic, copy, nullable) NSString *ownerDomain;

/** The name of the owner of this API. See ownerDomain. */
@property(nonatomic, copy, nullable) NSString *ownerName;

/** The package of the owner of this API. See ownerDomain. */
@property(nonatomic, copy, nullable) NSString *packagePath;

/** Common parameters that apply across all apis. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestDescription_Parameters *parameters;

/** The protocol described by this document. */
@property(nonatomic, copy, nullable) NSString *protocol;

/** The resources in this API. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestDescription_Resources *resources;

/** The version of this API. */
@property(nonatomic, copy, nullable) NSString *revision;

/** The root URL under which all API services live. */
@property(nonatomic, copy, nullable) NSString *rootUrl;

/** The schemas for this API. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestDescription_Schemas *schemas;

/** The base path for all REST requests. */
@property(nonatomic, copy, nullable) NSString *servicePath;

/** The title of this API. */
@property(nonatomic, copy, nullable) NSString *title;

/** The version of this API. */
@property(nonatomic, copy, nullable) NSString *version;

/**
 *  versionModule
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *versionModule;

@end


/**
 *  Authentication information.
 */
@interface GTLRDiscovery_RestDescription_Auth : GTLRObject

/** OAuth 2.0 authentication information. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestDescription_Auth_Oauth2 *oauth2;

@end


/**
 *  Links to 16x16 and 32x32 icons representing the API.
 */
@interface GTLRDiscovery_RestDescription_Icons : GTLRObject

/** The URL of the 16x16 icon. */
@property(nonatomic, copy, nullable) NSString *x16;

/** The URL of the 32x32 icon. */
@property(nonatomic, copy, nullable) NSString *x32;

@end


/**
 *  API-level methods for this API.
 *
 *  @note This class is documented as having more properties of
 *        GTLRDiscovery_RestMethod. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRDiscovery_RestDescription_Methods : GTLRObject
@end


/**
 *  Common parameters that apply across all apis.
 *
 *  @note This class is documented as having more properties of
 *        GTLRDiscovery_JsonSchema. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRDiscovery_RestDescription_Parameters : GTLRObject
@end


/**
 *  The resources in this API.
 *
 *  @note This class is documented as having more properties of
 *        GTLRDiscovery_RestResource. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRDiscovery_RestDescription_Resources : GTLRObject
@end


/**
 *  The schemas for this API.
 *
 *  @note This class is documented as having more properties of
 *        GTLRDiscovery_JsonSchema. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRDiscovery_RestDescription_Schemas : GTLRObject
@end


/**
 *  OAuth 2.0 authentication information.
 */
@interface GTLRDiscovery_RestDescription_Auth_Oauth2 : GTLRObject

/** Available OAuth 2.0 scopes. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes *scopes;

@end


/**
 *  Available OAuth 2.0 scopes.
 *
 *  @note This class is documented as having more properties of
 *        GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes_Scope. Use @c
 *        -additionalJSONKeys and @c -additionalPropertyForName: to get the list
 *        of properties and then fetch them; or @c -additionalProperties to
 *        fetch them all at once.
 */
@interface GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes : GTLRObject
@end


/**
 *  The scope value.
 */
@interface GTLRDiscovery_RestDescription_Auth_Oauth2_Scopes_Scope : GTLRObject

/**
 *  Description of scope.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

@end


/**
 *  GTLRDiscovery_RestMethod
 */
@interface GTLRDiscovery_RestMethod : GTLRObject

/**
 *  Description of this method.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/**
 *  Whether this method requires an ETag to be specified. The ETag is sent as an
 *  HTTP If-Match or If-None-Match header.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *etagRequired;

/** HTTP method used by this method. */
@property(nonatomic, copy, nullable) NSString *httpMethod;

/**
 *  A unique ID for this method. This property can be used to match methods
 *  between different versions of Discovery.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/** Media upload parameters. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestMethod_MediaUpload *mediaUpload;

/**
 *  Ordered list of required parameters, serves as a hint to clients on how to
 *  structure their method signatures. The array is ordered such that the
 *  "most-significant" parameter appears first.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *parameterOrder;

/** Details for all parameters in this method. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestMethod_Parameters *parameters;

/**
 *  The URI path of this REST method. Should be used in conjunction with the
 *  basePath property at the api-level.
 */
@property(nonatomic, copy, nullable) NSString *path;

/** The schema for the request. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestMethod_Request *request;

/** The schema for the response. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestMethod_Response *response;

/** OAuth 2.0 scopes applicable to this method. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *scopes;

/**
 *  Whether this method supports media downloads.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *supportsMediaDownload;

/**
 *  Whether this method supports media uploads.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *supportsMediaUpload;

/**
 *  Whether this method supports subscriptions.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *supportsSubscription;

/**
 *  Indicates that downloads from this method should use the download service
 *  URL (i.e. "/download"). Only applies if the method supports media download.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *useMediaDownloadService;

@end


/**
 *  Media upload parameters.
 */
@interface GTLRDiscovery_RestMethod_MediaUpload : GTLRObject

/** MIME Media Ranges for acceptable media uploads to this method. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *accept;

/** Maximum size of a media upload, such as "1MB", "2GB" or "3TB". */
@property(nonatomic, copy, nullable) NSString *maxSize;

/** Supported upload protocols. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestMethod_MediaUpload_Protocols *protocols;

@end


/**
 *  Details for all parameters in this method.
 *
 *  @note This class is documented as having more properties of
 *        GTLRDiscovery_JsonSchema. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRDiscovery_RestMethod_Parameters : GTLRObject
@end


/**
 *  The schema for the request.
 */
@interface GTLRDiscovery_RestMethod_Request : GTLRObject

/** Schema ID for the request schema. */
@property(nonatomic, copy, nullable) NSString *xRef;

/** parameter name. */
@property(nonatomic, copy, nullable) NSString *parameterName;

@end


/**
 *  The schema for the response.
 */
@interface GTLRDiscovery_RestMethod_Response : GTLRObject

/** Schema ID for the response schema. */
@property(nonatomic, copy, nullable) NSString *xRef;

@end


/**
 *  Supported upload protocols.
 */
@interface GTLRDiscovery_RestMethod_MediaUpload_Protocols : GTLRObject

/** Supports the Resumable Media Upload protocol. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestMethod_MediaUpload_Protocols_Resumable *resumable;

/** Supports uploading as a single HTTP request. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestMethod_MediaUpload_Protocols_Simple *simple;

@end


/**
 *  Supports the Resumable Media Upload protocol.
 */
@interface GTLRDiscovery_RestMethod_MediaUpload_Protocols_Resumable : GTLRObject

/**
 *  True if this endpoint supports uploading multipart media.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *multipart;

/**
 *  The URI path to be used for upload. Should be used in conjunction with the
 *  basePath property at the api-level.
 */
@property(nonatomic, copy, nullable) NSString *path;

@end


/**
 *  Supports uploading as a single HTTP request.
 */
@interface GTLRDiscovery_RestMethod_MediaUpload_Protocols_Simple : GTLRObject

/**
 *  True if this endpoint supports upload multipart media.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *multipart;

/**
 *  The URI path to be used for upload. Should be used in conjunction with the
 *  basePath property at the api-level.
 */
@property(nonatomic, copy, nullable) NSString *path;

@end


/**
 *  GTLRDiscovery_RestResource
 */
@interface GTLRDiscovery_RestResource : GTLRObject

/** Methods on this resource. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestResource_Methods *methods;

/** Sub-resources on this resource. */
@property(nonatomic, strong, nullable) GTLRDiscovery_RestResource_Resources *resources;

@end


/**
 *  Methods on this resource.
 *
 *  @note This class is documented as having more properties of
 *        GTLRDiscovery_RestMethod. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRDiscovery_RestResource_Methods : GTLRObject
@end


/**
 *  Sub-resources on this resource.
 *
 *  @note This class is documented as having more properties of
 *        GTLRDiscovery_RestResource. Use @c -additionalJSONKeys and @c
 *        -additionalPropertyForName: to get the list of properties and then
 *        fetch them; or @c -additionalProperties to fetch them all at once.
 */
@interface GTLRDiscovery_RestResource_Resources : GTLRObject
@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
