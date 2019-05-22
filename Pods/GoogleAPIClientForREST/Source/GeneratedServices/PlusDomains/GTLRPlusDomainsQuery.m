// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google+ Domains API (plusDomains/v1)
// Description:
//   Builds on top of the Google+ platform for Google Apps Domains.
// Documentation:
//   https://developers.google.com/+/domains/

#import "GTLRPlusDomainsQuery.h"

#import "GTLRPlusDomainsObjects.h"

// ----------------------------------------------------------------------------
// Constants

// collection
NSString * const kGTLRPlusDomainsCollectionCircled   = @"circled";
NSString * const kGTLRPlusDomainsCollectionCloud     = @"cloud";
NSString * const kGTLRPlusDomainsCollectionPlusoners = @"plusoners";
NSString * const kGTLRPlusDomainsCollectionResharers = @"resharers";
NSString * const kGTLRPlusDomainsCollectionSharedto  = @"sharedto";
NSString * const kGTLRPlusDomainsCollectionUser      = @"user";

// orderBy
NSString * const kGTLRPlusDomainsOrderByAlphabetical = @"alphabetical";
NSString * const kGTLRPlusDomainsOrderByBest         = @"best";

// sortOrder
NSString * const kGTLRPlusDomainsSortOrderAscending  = @"ascending";
NSString * const kGTLRPlusDomainsSortOrderDescending = @"descending";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRPlusDomainsQuery

@dynamic fields;

@end

@implementation GTLRPlusDomainsQuery_ActivitiesGet

@dynamic activityId;

+ (instancetype)queryWithActivityId:(NSString *)activityId {
  NSArray *pathParams = @[ @"activityId" ];
  NSString *pathURITemplate = @"activities/{activityId}";
  GTLRPlusDomainsQuery_ActivitiesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.activityId = activityId;
  query.expectedObjectClass = [GTLRPlusDomains_Activity class];
  query.loggingName = @"plusDomains.activities.get";
  return query;
}

@end

@implementation GTLRPlusDomainsQuery_ActivitiesList

@dynamic collection, maxResults, pageToken, userId;

+ (instancetype)queryWithUserId:(NSString *)userId
                     collection:(NSString *)collection {
  NSArray *pathParams = @[
    @"collection", @"userId"
  ];
  NSString *pathURITemplate = @"people/{userId}/activities/{collection}";
  GTLRPlusDomainsQuery_ActivitiesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.collection = collection;
  query.expectedObjectClass = [GTLRPlusDomains_ActivityFeed class];
  query.loggingName = @"plusDomains.activities.list";
  return query;
}

@end

@implementation GTLRPlusDomainsQuery_AudiencesList

@dynamic maxResults, pageToken, userId;

+ (instancetype)queryWithUserId:(NSString *)userId {
  NSArray *pathParams = @[ @"userId" ];
  NSString *pathURITemplate = @"people/{userId}/audiences";
  GTLRPlusDomainsQuery_AudiencesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.expectedObjectClass = [GTLRPlusDomains_AudiencesFeed class];
  query.loggingName = @"plusDomains.audiences.list";
  return query;
}

@end

@implementation GTLRPlusDomainsQuery_CirclesList

@dynamic maxResults, pageToken, userId;

+ (instancetype)queryWithUserId:(NSString *)userId {
  NSArray *pathParams = @[ @"userId" ];
  NSString *pathURITemplate = @"people/{userId}/circles";
  GTLRPlusDomainsQuery_CirclesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.expectedObjectClass = [GTLRPlusDomains_CircleFeed class];
  query.loggingName = @"plusDomains.circles.list";
  return query;
}

@end

@implementation GTLRPlusDomainsQuery_CommentsGet

@dynamic commentId;

+ (instancetype)queryWithCommentId:(NSString *)commentId {
  NSArray *pathParams = @[ @"commentId" ];
  NSString *pathURITemplate = @"comments/{commentId}";
  GTLRPlusDomainsQuery_CommentsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.commentId = commentId;
  query.expectedObjectClass = [GTLRPlusDomains_Comment class];
  query.loggingName = @"plusDomains.comments.get";
  return query;
}

@end

@implementation GTLRPlusDomainsQuery_CommentsList

@dynamic activityId, maxResults, pageToken, sortOrder;

+ (instancetype)queryWithActivityId:(NSString *)activityId {
  NSArray *pathParams = @[ @"activityId" ];
  NSString *pathURITemplate = @"activities/{activityId}/comments";
  GTLRPlusDomainsQuery_CommentsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.activityId = activityId;
  query.expectedObjectClass = [GTLRPlusDomains_CommentFeed class];
  query.loggingName = @"plusDomains.comments.list";
  return query;
}

@end

@implementation GTLRPlusDomainsQuery_MediaInsert

@dynamic collection, userId;

+ (instancetype)queryWithObject:(GTLRPlusDomains_Media *)object
                         userId:(NSString *)userId
                     collection:(NSString *)collection
               uploadParameters:(GTLRUploadParameters *)uploadParameters {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"collection", @"userId"
  ];
  NSString *pathURITemplate = @"people/{userId}/media/{collection}";
  GTLRPlusDomainsQuery_MediaInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.userId = userId;
  query.collection = collection;
  query.uploadParameters = uploadParameters;
  query.expectedObjectClass = [GTLRPlusDomains_Media class];
  query.loggingName = @"plusDomains.media.insert";
  return query;
}

@end

@implementation GTLRPlusDomainsQuery_PeopleGet

@dynamic userId;

+ (instancetype)queryWithUserId:(NSString *)userId {
  NSArray *pathParams = @[ @"userId" ];
  NSString *pathURITemplate = @"people/{userId}";
  GTLRPlusDomainsQuery_PeopleGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.expectedObjectClass = [GTLRPlusDomains_Person class];
  query.loggingName = @"plusDomains.people.get";
  return query;
}

@end

@implementation GTLRPlusDomainsQuery_PeopleList

@dynamic collection, maxResults, orderBy, pageToken, userId;

+ (instancetype)queryWithUserId:(NSString *)userId
                     collection:(NSString *)collection {
  NSArray *pathParams = @[
    @"collection", @"userId"
  ];
  NSString *pathURITemplate = @"people/{userId}/people/{collection}";
  GTLRPlusDomainsQuery_PeopleList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.collection = collection;
  query.expectedObjectClass = [GTLRPlusDomains_PeopleFeed class];
  query.loggingName = @"plusDomains.people.list";
  return query;
}

@end

@implementation GTLRPlusDomainsQuery_PeopleListByActivity

@dynamic activityId, collection, maxResults, pageToken;

+ (instancetype)queryWithActivityId:(NSString *)activityId
                         collection:(NSString *)collection {
  NSArray *pathParams = @[
    @"activityId", @"collection"
  ];
  NSString *pathURITemplate = @"activities/{activityId}/people/{collection}";
  GTLRPlusDomainsQuery_PeopleListByActivity *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.activityId = activityId;
  query.collection = collection;
  query.expectedObjectClass = [GTLRPlusDomains_PeopleFeed class];
  query.loggingName = @"plusDomains.people.listByActivity";
  return query;
}

@end