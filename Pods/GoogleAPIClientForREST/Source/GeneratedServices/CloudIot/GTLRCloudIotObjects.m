// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud IoT API (cloudiot/v1)
// Description:
//   Registers and manages IoT (Internet of Things) devices that connect to the
//   Google Cloud Platform.
// Documentation:
//   https://cloud.google.com/iot

#import "GTLRCloudIotObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRCloudIot_Device.logLevel
NSString * const kGTLRCloudIot_Device_LogLevel_Debug           = @"DEBUG";
NSString * const kGTLRCloudIot_Device_LogLevel_Error           = @"ERROR";
NSString * const kGTLRCloudIot_Device_LogLevel_Info            = @"INFO";
NSString * const kGTLRCloudIot_Device_LogLevel_LogLevelUnspecified = @"LOG_LEVEL_UNSPECIFIED";
NSString * const kGTLRCloudIot_Device_LogLevel_None            = @"NONE";

// GTLRCloudIot_DeviceRegistry.logLevel
NSString * const kGTLRCloudIot_DeviceRegistry_LogLevel_Debug   = @"DEBUG";
NSString * const kGTLRCloudIot_DeviceRegistry_LogLevel_Error   = @"ERROR";
NSString * const kGTLRCloudIot_DeviceRegistry_LogLevel_Info    = @"INFO";
NSString * const kGTLRCloudIot_DeviceRegistry_LogLevel_LogLevelUnspecified = @"LOG_LEVEL_UNSPECIFIED";
NSString * const kGTLRCloudIot_DeviceRegistry_LogLevel_None    = @"NONE";

// GTLRCloudIot_GatewayConfig.gatewayAuthMethod
NSString * const kGTLRCloudIot_GatewayConfig_GatewayAuthMethod_AssociationAndDeviceAuthToken = @"ASSOCIATION_AND_DEVICE_AUTH_TOKEN";
NSString * const kGTLRCloudIot_GatewayConfig_GatewayAuthMethod_AssociationOnly = @"ASSOCIATION_ONLY";
NSString * const kGTLRCloudIot_GatewayConfig_GatewayAuthMethod_DeviceAuthTokenOnly = @"DEVICE_AUTH_TOKEN_ONLY";
NSString * const kGTLRCloudIot_GatewayConfig_GatewayAuthMethod_GatewayAuthMethodUnspecified = @"GATEWAY_AUTH_METHOD_UNSPECIFIED";

// GTLRCloudIot_GatewayConfig.gatewayType
NSString * const kGTLRCloudIot_GatewayConfig_GatewayType_Gateway = @"GATEWAY";
NSString * const kGTLRCloudIot_GatewayConfig_GatewayType_GatewayTypeUnspecified = @"GATEWAY_TYPE_UNSPECIFIED";
NSString * const kGTLRCloudIot_GatewayConfig_GatewayType_NonGateway = @"NON_GATEWAY";

// GTLRCloudIot_HttpConfig.httpEnabledState
NSString * const kGTLRCloudIot_HttpConfig_HttpEnabledState_HttpDisabled = @"HTTP_DISABLED";
NSString * const kGTLRCloudIot_HttpConfig_HttpEnabledState_HttpEnabled = @"HTTP_ENABLED";
NSString * const kGTLRCloudIot_HttpConfig_HttpEnabledState_HttpStateUnspecified = @"HTTP_STATE_UNSPECIFIED";

// GTLRCloudIot_MqttConfig.mqttEnabledState
NSString * const kGTLRCloudIot_MqttConfig_MqttEnabledState_MqttDisabled = @"MQTT_DISABLED";
NSString * const kGTLRCloudIot_MqttConfig_MqttEnabledState_MqttEnabled = @"MQTT_ENABLED";
NSString * const kGTLRCloudIot_MqttConfig_MqttEnabledState_MqttStateUnspecified = @"MQTT_STATE_UNSPECIFIED";

// GTLRCloudIot_PublicKeyCertificate.format
NSString * const kGTLRCloudIot_PublicKeyCertificate_Format_UnspecifiedPublicKeyCertificateFormat = @"UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT";
NSString * const kGTLRCloudIot_PublicKeyCertificate_Format_X509CertificatePem = @"X509_CERTIFICATE_PEM";

// GTLRCloudIot_PublicKeyCredential.format
NSString * const kGTLRCloudIot_PublicKeyCredential_Format_Es256Pem = @"ES256_PEM";
NSString * const kGTLRCloudIot_PublicKeyCredential_Format_Es256X509Pem = @"ES256_X509_PEM";
NSString * const kGTLRCloudIot_PublicKeyCredential_Format_RsaPem = @"RSA_PEM";
NSString * const kGTLRCloudIot_PublicKeyCredential_Format_RsaX509Pem = @"RSA_X509_PEM";
NSString * const kGTLRCloudIot_PublicKeyCredential_Format_UnspecifiedPublicKeyFormat = @"UNSPECIFIED_PUBLIC_KEY_FORMAT";

// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_BindDeviceToGatewayRequest
//

@implementation GTLRCloudIot_BindDeviceToGatewayRequest
@dynamic deviceId, gatewayId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_BindDeviceToGatewayResponse
//

@implementation GTLRCloudIot_BindDeviceToGatewayResponse
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_Binding
//

@implementation GTLRCloudIot_Binding
@dynamic condition, members, role;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"members" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_Device
//

@implementation GTLRCloudIot_Device
@dynamic blocked, config, credentials, gatewayConfig, identifier,
         lastConfigAckTime, lastConfigSendTime, lastErrorStatus, lastErrorTime,
         lastEventTime, lastHeartbeatTime, lastStateTime, logLevel, metadata,
         name, numId, state;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"credentials" : [GTLRCloudIot_DeviceCredential class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_Device_Metadata
//

@implementation GTLRCloudIot_Device_Metadata

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_DeviceConfig
//

@implementation GTLRCloudIot_DeviceConfig
@dynamic binaryData, cloudUpdateTime, deviceAckTime, version;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_DeviceCredential
//

@implementation GTLRCloudIot_DeviceCredential
@dynamic expirationTime, publicKey;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_DeviceRegistry
//

@implementation GTLRCloudIot_DeviceRegistry
@dynamic credentials, eventNotificationConfigs, httpConfig, identifier,
         logLevel, mqttConfig, name, stateNotificationConfig;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"credentials" : [GTLRCloudIot_RegistryCredential class],
    @"eventNotificationConfigs" : [GTLRCloudIot_EventNotificationConfig class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_DeviceState
//

@implementation GTLRCloudIot_DeviceState
@dynamic binaryData, updateTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_Empty
//

@implementation GTLRCloudIot_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_EventNotificationConfig
//

@implementation GTLRCloudIot_EventNotificationConfig
@dynamic pubsubTopicName, subfolderMatches;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_Expr
//

@implementation GTLRCloudIot_Expr
@dynamic descriptionProperty, expression, location, title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_GatewayConfig
//

@implementation GTLRCloudIot_GatewayConfig
@dynamic gatewayAuthMethod, gatewayType, lastAccessedGatewayId,
         lastAccessedGatewayTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_GetIamPolicyRequest
//

@implementation GTLRCloudIot_GetIamPolicyRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_HttpConfig
//

@implementation GTLRCloudIot_HttpConfig
@dynamic httpEnabledState;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_ListDeviceConfigVersionsResponse
//

@implementation GTLRCloudIot_ListDeviceConfigVersionsResponse
@dynamic deviceConfigs;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"deviceConfigs" : [GTLRCloudIot_DeviceConfig class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_ListDeviceRegistriesResponse
//

@implementation GTLRCloudIot_ListDeviceRegistriesResponse
@dynamic deviceRegistries, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"deviceRegistries" : [GTLRCloudIot_DeviceRegistry class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"deviceRegistries";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_ListDevicesResponse
//

@implementation GTLRCloudIot_ListDevicesResponse
@dynamic devices, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"devices" : [GTLRCloudIot_Device class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"devices";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_ListDeviceStatesResponse
//

@implementation GTLRCloudIot_ListDeviceStatesResponse
@dynamic deviceStates;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"deviceStates" : [GTLRCloudIot_DeviceState class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_ModifyCloudToDeviceConfigRequest
//

@implementation GTLRCloudIot_ModifyCloudToDeviceConfigRequest
@dynamic binaryData, versionToUpdate;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_MqttConfig
//

@implementation GTLRCloudIot_MqttConfig
@dynamic mqttEnabledState;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_Policy
//

@implementation GTLRCloudIot_Policy
@dynamic bindings, ETag, version;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"bindings" : [GTLRCloudIot_Binding class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_PublicKeyCertificate
//

@implementation GTLRCloudIot_PublicKeyCertificate
@dynamic certificate, format, x509Details;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_PublicKeyCredential
//

@implementation GTLRCloudIot_PublicKeyCredential
@dynamic format, key;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_RegistryCredential
//

@implementation GTLRCloudIot_RegistryCredential
@dynamic publicKeyCertificate;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_SendCommandToDeviceRequest
//

@implementation GTLRCloudIot_SendCommandToDeviceRequest
@dynamic binaryData, subfolder;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_SendCommandToDeviceResponse
//

@implementation GTLRCloudIot_SendCommandToDeviceResponse
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_SetIamPolicyRequest
//

@implementation GTLRCloudIot_SetIamPolicyRequest
@dynamic policy;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_StateNotificationConfig
//

@implementation GTLRCloudIot_StateNotificationConfig
@dynamic pubsubTopicName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_Status
//

@implementation GTLRCloudIot_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRCloudIot_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_Status_Details_Item
//

@implementation GTLRCloudIot_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_TestIamPermissionsRequest
//

@implementation GTLRCloudIot_TestIamPermissionsRequest
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_TestIamPermissionsResponse
//

@implementation GTLRCloudIot_TestIamPermissionsResponse
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_UnbindDeviceFromGatewayRequest
//

@implementation GTLRCloudIot_UnbindDeviceFromGatewayRequest
@dynamic deviceId, gatewayId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_UnbindDeviceFromGatewayResponse
//

@implementation GTLRCloudIot_UnbindDeviceFromGatewayResponse
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIot_X509CertificateDetails
//

@implementation GTLRCloudIot_X509CertificateDetails
@dynamic expiryTime, issuer, publicKeyType, signatureAlgorithm, startTime,
         subject;
@end
