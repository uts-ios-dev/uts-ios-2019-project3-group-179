// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Civic Information API (civicinfo/v2)
// Description:
//   Provides polling places, early vote locations, contest data, election
//   officials, and government representatives for U.S. residential addresses.
// Documentation:
//   https://developers.google.com/civic-information

#import "GTLRCivicInfoQuery.h"

#import "GTLRCivicInfoObjects.h"

// ----------------------------------------------------------------------------
// Constants

// levels
NSString * const kGTLRCivicInfoLevelsAdministrativeArea1 = @"administrativeArea1";
NSString * const kGTLRCivicInfoLevelsAdministrativeArea2 = @"administrativeArea2";
NSString * const kGTLRCivicInfoLevelsCountry             = @"country";
NSString * const kGTLRCivicInfoLevelsInternational       = @"international";
NSString * const kGTLRCivicInfoLevelsLocality            = @"locality";
NSString * const kGTLRCivicInfoLevelsRegional            = @"regional";
NSString * const kGTLRCivicInfoLevelsSpecial             = @"special";
NSString * const kGTLRCivicInfoLevelsSubLocality1        = @"subLocality1";
NSString * const kGTLRCivicInfoLevelsSubLocality2        = @"subLocality2";

// roles
NSString * const kGTLRCivicInfoRolesDeputyHeadOfGovernment = @"deputyHeadOfGovernment";
NSString * const kGTLRCivicInfoRolesExecutiveCouncil       = @"executiveCouncil";
NSString * const kGTLRCivicInfoRolesGovernmentOfficer      = @"governmentOfficer";
NSString * const kGTLRCivicInfoRolesHeadOfGovernment       = @"headOfGovernment";
NSString * const kGTLRCivicInfoRolesHeadOfState            = @"headOfState";
NSString * const kGTLRCivicInfoRolesHighestCourtJudge      = @"highestCourtJudge";
NSString * const kGTLRCivicInfoRolesJudge                  = @"judge";
NSString * const kGTLRCivicInfoRolesLegislatorLowerBody    = @"legislatorLowerBody";
NSString * const kGTLRCivicInfoRolesLegislatorUpperBody    = @"legislatorUpperBody";
NSString * const kGTLRCivicInfoRolesSchoolBoard            = @"schoolBoard";
NSString * const kGTLRCivicInfoRolesSpecialPurposeOfficer  = @"specialPurposeOfficer";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRCivicInfoQuery

@dynamic fields;

@end

@implementation GTLRCivicInfoQuery_DivisionsSearch

@dynamic query;

+ (instancetype)queryWithObject:(GTLRCivicInfo_DivisionSearchRequest *)object {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"divisions";
  GTLRCivicInfoQuery_DivisionsSearch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRCivicInfo_DivisionSearchResponse class];
  query.loggingName = @"civicinfo.divisions.search";
  return query;
}

@end

@implementation GTLRCivicInfoQuery_ElectionsElectionQuery

+ (instancetype)queryWithObject:(GTLRCivicInfo_ElectionsQueryRequest *)object {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"elections";
  GTLRCivicInfoQuery_ElectionsElectionQuery *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRCivicInfo_ElectionsQueryResponse class];
  query.loggingName = @"civicinfo.elections.electionQuery";
  return query;
}

@end

@implementation GTLRCivicInfoQuery_ElectionsVoterInfoQuery

@dynamic address, electionId, officialOnly, returnAllAvailableData;

+ (instancetype)queryWithObject:(GTLRCivicInfo_VoterInfoRequest *)object
                        address:(NSString *)address {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"voterinfo";
  GTLRCivicInfoQuery_ElectionsVoterInfoQuery *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.address = address;
  query.expectedObjectClass = [GTLRCivicInfo_VoterInfoResponse class];
  query.loggingName = @"civicinfo.elections.voterInfoQuery";
  return query;
}

@end

@implementation GTLRCivicInfoQuery_RepresentativesRepresentativeInfoByAddress

@dynamic address, includeOffices, levels, roles;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"levels" : [NSString class],
    @"roles" : [NSString class]
  };
  return map;
}

+ (instancetype)queryWithObject:(GTLRCivicInfo_RepresentativeInfoRequest *)object {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"representatives";
  GTLRCivicInfoQuery_RepresentativesRepresentativeInfoByAddress *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRCivicInfo_RepresentativeInfoResponse class];
  query.loggingName = @"civicinfo.representatives.representativeInfoByAddress";
  return query;
}

@end

@implementation GTLRCivicInfoQuery_RepresentativesRepresentativeInfoByDivision

@dynamic levels, ocdId, recursive, roles;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"levels" : [NSString class],
    @"roles" : [NSString class]
  };
  return map;
}

+ (instancetype)queryWithObject:(GTLRCivicInfo_DivisionRepresentativeInfoRequest *)object
                          ocdId:(NSString *)ocdId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"ocdId" ];
  NSString *pathURITemplate = @"representatives/{ocdId}";
  GTLRCivicInfoQuery_RepresentativesRepresentativeInfoByDivision *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.ocdId = ocdId;
  query.expectedObjectClass = [GTLRCivicInfo_RepresentativeInfoData class];
  query.loggingName = @"civicinfo.representatives.representativeInfoByDivision";
  return query;
}

@end
