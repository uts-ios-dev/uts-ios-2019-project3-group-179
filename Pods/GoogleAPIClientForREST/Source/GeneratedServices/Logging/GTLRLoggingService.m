// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Stackdriver Logging API (logging/v2)
// Description:
//   Writes log entries and manages your Logging configuration.
// Documentation:
//   https://cloud.google.com/logging/docs/

#import "GTLRLogging.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopeLoggingAdmin                 = @"https://www.googleapis.com/auth/logging.admin";
NSString * const kGTLRAuthScopeLoggingCloudPlatform         = @"https://www.googleapis.com/auth/cloud-platform";
NSString * const kGTLRAuthScopeLoggingCloudPlatformReadOnly = @"https://www.googleapis.com/auth/cloud-platform.read-only";
NSString * const kGTLRAuthScopeLoggingRead                  = @"https://www.googleapis.com/auth/logging.read";
NSString * const kGTLRAuthScopeLoggingWrite                 = @"https://www.googleapis.com/auth/logging.write";

// ----------------------------------------------------------------------------
//   GTLRLoggingService
//

@implementation GTLRLoggingService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://logging.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
