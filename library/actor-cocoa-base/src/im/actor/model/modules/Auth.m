//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Auth.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Auth.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/ApiConfiguration.h"
#include "im/actor/model/AuthState.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/MainThreadProvider.h"
#include "im/actor/model/ThreadingProvider.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/RequestSendAuthCode.h"
#include "im/actor/model/api/rpc/RequestSignIn.h"
#include "im/actor/model/api/rpc/RequestSignUp.h"
#include "im/actor/model/api/rpc/ResponseAuth.h"
#include "im/actor/model/api/rpc/ResponseSendAuthCode.h"
#include "im/actor/model/concurrency/Command.h"
#include "im/actor/model/concurrency/CommandCallback.h"
#include "im/actor/model/crypto/CryptoKeyPair.h"
#include "im/actor/model/crypto/CryptoUtils.h"
#include "im/actor/model/droidkit/engine/PreferencesStorage.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/modules/Auth.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Profile.h"
#include "im/actor/model/modules/Updates.h"
#include "im/actor/model/modules/updates/internal/LoggedIn.h"
#include "im/actor/model/network/RpcException.h"

@interface ImActorModelModulesAuth () {
 @public
  AMAuthStateEnum *state_;
  id<AMMainThreadProvider> mainThreadProvider_;
  IOSByteArray *publicKey_;
  IOSByteArray *privateKey_;
  IOSByteArray *deviceHash_;
  AMApiConfiguration *apiConfiguration_;
  jint myUid__;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth, state_, AMAuthStateEnum *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth, mainThreadProvider_, id<AMMainThreadProvider>)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth, publicKey_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth, privateKey_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth, deviceHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth, apiConfiguration_, AMApiConfiguration *)

@interface ImActorModelModulesAuth_$1 () {
 @public
  ImActorModelModulesAuth *this$0_;
  jlong val$phone_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$1, this$0_, ImActorModelModulesAuth *)

@interface ImActorModelModulesAuth_$1_$1 () {
 @public
  ImActorModelModulesAuth_$1 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$1_$1, this$0_, ImActorModelModulesAuth_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$1_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesAuth_$1_$1_$1 () {
 @public
  ImActorModelModulesAuth_$1_$1 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$1_$1_$1, this$0_, ImActorModelModulesAuth_$1_$1 *)

@interface ImActorModelModulesAuth_$1_$1_$2 () {
 @public
  ImActorModelModulesAuth_$1_$1 *this$0_;
  AMRpcException *val$e_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$1_$1_$2, this$0_, ImActorModelModulesAuth_$1_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$1_$1_$2, val$e_, AMRpcException *)

@interface ImActorModelModulesAuth_$2 () {
 @public
  ImActorModelModulesAuth *this$0_;
  jint val$code_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$2, this$0_, ImActorModelModulesAuth *)

@interface ImActorModelModulesAuth_$2_$1 () {
 @public
  ImActorModelModulesAuth_$2 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$2_$1, this$0_, ImActorModelModulesAuth_$2 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$2_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesAuth_$2_$1_$1 () {
 @public
  ImActorModelModulesAuth_$2_$1 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$2_$1_$1, this$0_, ImActorModelModulesAuth_$2_$1 *)

@interface ImActorModelModulesAuth_$2_$1_$2 () {
 @public
  ImActorModelModulesAuth_$2_$1 *this$0_;
  AMRpcException *val$e_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$2_$1_$2, this$0_, ImActorModelModulesAuth_$2_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$2_$1_$2, val$e_, AMRpcException *)

@interface ImActorModelModulesAuth_$3 () {
 @public
  ImActorModelModulesAuth *this$0_;
  NSString *val$firstName_;
  jboolean val$isSilent_;
  NSString *val$avatarPath_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$3, this$0_, ImActorModelModulesAuth *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$3, val$firstName_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$3, val$avatarPath_, NSString *)

@interface ImActorModelModulesAuth_$3_$1 () {
 @public
  ImActorModelModulesAuth_$3 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$3_$1, this$0_, ImActorModelModulesAuth_$3 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$3_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesAuth_$3_$1_$1 () {
 @public
  ImActorModelModulesAuth_$3_$1 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$3_$1_$1, this$0_, ImActorModelModulesAuth_$3_$1 *)

@interface ImActorModelModulesAuth_$3_$1_$2 () {
 @public
  ImActorModelModulesAuth_$3_$1 *this$0_;
  AMRpcException *val$e_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$3_$1_$2, this$0_, ImActorModelModulesAuth_$3_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesAuth_$3_$1_$2, val$e_, AMRpcException *)


#line 23
@implementation ImActorModelModulesAuth

NSString * ImActorModelModulesAuth_KEY_DEVICE_HASH_ = @"device_hash";
NSString * ImActorModelModulesAuth_KEY_AUTH_ = 
#line 27
@"auth_yes";
NSString * ImActorModelModulesAuth_KEY_AUTH_UID_ = 
#line 28
@"auth_uid";
NSString * ImActorModelModulesAuth_KEY_PHONE_ = 
#line 29
@"auth_phone";
NSString * ImActorModelModulesAuth_KEY_SMS_HASH_ = 
#line 30
@"auth_sms_hash";
NSString * ImActorModelModulesAuth_KEY_SMS_CODE_ = 
#line 31
@"auth_sms_code";
NSString * ImActorModelModulesAuth_KEY_PUBLIC_KEY_ = 
#line 33
@"auth_key_public";
NSString * ImActorModelModulesAuth_KEY_PRIVATE_KEY_ = 
#line 34
@"auth_key_private";


#line 47
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  if (self =
#line 48
  [super initWithImActorModelModulesModules:modules]) {
    
#line 50
    jlong start = [((id<AMThreadingProvider>) nil_chk([((AMConfiguration *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules)) getConfiguration])) getThreadingProvider])) getActorTime];
    
#line 51
    self->mainThreadProvider_ = [((AMConfiguration *) nil_chk([modules getConfiguration])) getMainThreadProvider];
    
#line 52
    AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage5.3.1 in ", ([((id<AMThreadingProvider>) nil_chk([((AMConfiguration *) nil_chk([modules getConfiguration])) getThreadingProvider])) getActorTime] - start), @" ms"));
    
#line 53
    start = [((id<AMThreadingProvider>) nil_chk([((AMConfiguration *) nil_chk([modules getConfiguration])) getThreadingProvider])) getActorTime];
    
#line 55
    self->myUid__ = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getInt:ImActorModelModulesAuth_KEY_AUTH_UID_ withDefault:0];
    
#line 56
    AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage5.3.2 in ", ([((id<AMThreadingProvider>) nil_chk([((AMConfiguration *) nil_chk([modules getConfiguration])) getThreadingProvider])) getActorTime] - start), @" ms"));
    
#line 57
    start = [((id<AMThreadingProvider>) nil_chk([((AMConfiguration *) nil_chk([modules getConfiguration])) getThreadingProvider])) getActorTime];
    
#line 60
    deviceHash_ = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getBytes:ImActorModelModulesAuth_KEY_DEVICE_HASH_];
    
#line 61
    if (deviceHash_ == nil) {
      deviceHash_ = AMCryptoUtils_SHA256WithByteArray_([((NSString *) nil_chk([((AMApiConfiguration *) nil_chk([((AMConfiguration *) nil_chk([modules getConfiguration])) getApiConfiguration])) getDeviceString])) getBytes]);
      [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBytes:ImActorModelModulesAuth_KEY_DEVICE_HASH_ withValue:deviceHash_];
    }
    
#line 67
    publicKey_ = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getBytes:ImActorModelModulesAuth_KEY_PUBLIC_KEY_];
    
#line 68
    privateKey_ = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getBytes:ImActorModelModulesAuth_KEY_PRIVATE_KEY_];
    
#line 70
    if (publicKey_ == nil || privateKey_ == nil) {
      AMCryptoKeyPair *keyPair = AMCryptoUtils_generateRSA1024KeyPair();
      publicKey_ = [((AMCryptoKeyPair *) nil_chk(keyPair)) getPublicKey];
      privateKey_ = [keyPair getPrivateKey];
      [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBytes:ImActorModelModulesAuth_KEY_PUBLIC_KEY_ withValue:publicKey_];
      [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBytes:ImActorModelModulesAuth_KEY_PRIVATE_KEY_ withValue:privateKey_];
    }
    
#line 78
    apiConfiguration_ = [((AMConfiguration *) nil_chk([modules getConfiguration])) getApiConfiguration];
    
#line 80
    AMLog_dWithNSString_withNSString_(@"CORE_INIT", JreStrcat("$J$", @"Loading stage5.3.3 in ", ([((id<AMThreadingProvider>) nil_chk([((AMConfiguration *) nil_chk([modules getConfiguration])) getThreadingProvider])) getActorTime] - start), @" ms"));
    
#line 81
    start = [((id<AMThreadingProvider>) nil_chk([((AMConfiguration *) nil_chk([modules getConfiguration])) getThreadingProvider])) getActorTime];
  }
  return self;
}


#line 84
- (void)run {
  
#line 85
  if ([((id<DKPreferencesStorage>) nil_chk([self preferences])) getBool:ImActorModelModulesAuth_KEY_AUTH_ withDefault:NO]) {
    state_ = AMAuthStateEnum_get_LOGGED_IN();
    [((ImActorModelModulesModules *) nil_chk([self modules])) onLoggedIn];
  }
  else {
    
#line 89
    state_ = AMAuthStateEnum_get_AUTH_START();
  }
}


#line 93
- (IOSByteArray *)getPublicKey {
  
#line 94
  return publicKey_;
}


#line 97
- (IOSByteArray *)getPrivateKey {
  
#line 98
  return privateKey_;
}


#line 101
- (jint)myUid {
  
#line 102
  return myUid__;
}


#line 105
- (AMAuthStateEnum *)getAuthState {
  
#line 106
  return state_;
}


#line 109
- (id<AMCommand>)requestSmsWithLong:(jlong)phone {
  
#line 110
  return [[ImActorModelModulesAuth_$1 alloc] initWithImActorModelModulesAuth:self withLong:phone];
}


#line 144
- (id<AMCommand>)sendCodeWithInt:(jint)code {
  
#line 145
  return [[ImActorModelModulesAuth_$2 alloc] initWithImActorModelModulesAuth:self withInt:code];
}


#line 197
- (id<AMCommand>)signUpWithNSString:(NSString *)firstName
                       withNSString:(NSString *)avatarPath
                        withBoolean:(jboolean)isSilent {
  
#line 198
  return [[ImActorModelModulesAuth_$3 alloc] initWithImActorModelModulesAuth:self withNSString:firstName withBoolean:isSilent withNSString:avatarPath];
}


#line 244
- (void)resetAuth {
  
#line 245
  state_ = AMAuthStateEnum_get_AUTH_START();
}


#line 248
- (jlong)getPhone {
  
#line 249
  return [((id<DKPreferencesStorage>) nil_chk([self preferences])) getLong:ImActorModelModulesAuth_KEY_PHONE_ withDefault:0];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth *)other {
  [super copyAllFieldsTo:other];
  other->state_ = state_;
  other->mainThreadProvider_ = mainThreadProvider_;
  other->publicKey_ = publicKey_;
  other->privateKey_ = privateKey_;
  other->deviceHash_ = deviceHash_;
  other->apiConfiguration_ = apiConfiguration_;
  other->myUid__ = myUid__;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth)

@implementation ImActorModelModulesAuth_$1


#line 112
- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  
#line 113
  [this$0_ requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestSendAuthCode alloc] initWithLong:val$phone_ withInt:[((AMApiConfiguration *) nil_chk(this$0_->apiConfiguration_)) getAppId] withNSString:
#line 114
  [this$0_->apiConfiguration_ getAppKey]] withAMRpcCallback:
#line 115
  [[ImActorModelModulesAuth_$1_$1 alloc] initWithImActorModelModulesAuth_$1:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesAuth:(ImActorModelModulesAuth *)outer$
                                       withLong:(jlong)capture$0 {
  this$0_ = outer$;
  val$phone_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$phone_ = val$phone_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$1)

@implementation ImActorModelModulesAuth_$1_$1


#line 117
- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSendAuthCode *)response {
  
#line 118
  [((id<DKPreferencesStorage>) nil_chk([this$0_->this$0_ preferences])) putLong:ImActorModelModulesAuth_get_KEY_PHONE_() withValue:this$0_->val$phone_];
  [((id<DKPreferencesStorage>) nil_chk([this$0_->this$0_ preferences])) putString:ImActorModelModulesAuth_get_KEY_SMS_HASH_() withValue:[((ImActorModelApiRpcResponseSendAuthCode *) nil_chk(response)) getSmsHash]];
  this$0_->this$0_->state_ = AMAuthStateEnum_get_CODE_VALIDATION();
  
#line 122
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesAuth_$1_$1_$1 alloc] initWithImActorModelModulesAuth_$1_$1:self]];
}


#line 131
- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  
#line 132
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesAuth_$1_$1_$2 alloc] initWithImActorModelModulesAuth_$1_$1:self withAMRpcException:e]];
}

- (instancetype)initWithImActorModelModulesAuth_$1:(ImActorModelModulesAuth_$1 *)outer$
                             withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$1_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$1_$1)

@implementation ImActorModelModulesAuth_$1_$1_$1


#line 124
- (void)run {
  
#line 125
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:this$0_->this$0_->this$0_->state_];
}

- (instancetype)initWithImActorModelModulesAuth_$1_$1:(ImActorModelModulesAuth_$1_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$1_$1_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$1_$1_$1)

@implementation ImActorModelModulesAuth_$1_$1_$2


#line 134
- (void)run {
  
#line 135
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:val$e_];
}

- (instancetype)initWithImActorModelModulesAuth_$1_$1:(ImActorModelModulesAuth_$1_$1 *)outer$
                                   withAMRpcException:(AMRpcException *)capture$0 {
  this$0_ = outer$;
  val$e_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$1_$1_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$e_ = val$e_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$1_$1_$2)

@implementation ImActorModelModulesAuth_$2


#line 147
- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  
#line 148
  [this$0_ requestWithImActorModelNetworkParserRequest:
#line 149
  [[ImActorModelApiRpcRequestSignIn alloc] initWithLong:
#line 150
  [((id<DKPreferencesStorage>) nil_chk([this$0_ preferences])) getLong:ImActorModelModulesAuth_get_KEY_PHONE_() withDefault:0] withNSString:
#line 151
  [((id<DKPreferencesStorage>) nil_chk([this$0_ preferences])) getString:ImActorModelModulesAuth_get_KEY_SMS_HASH_()] withNSString:JreStrcat("I", val$code_) withByteArray:this$0_->publicKey_ withByteArray:this$0_->deviceHash_ withNSString:
#line 155
  [((AMApiConfiguration *) nil_chk(this$0_->apiConfiguration_)) getAppTitle] withInt:
#line 156
  [this$0_->apiConfiguration_ getAppId] withNSString:[this$0_->apiConfiguration_ getAppKey]] withAMRpcCallback:
#line 157
  [[ImActorModelModulesAuth_$2_$1 alloc] initWithImActorModelModulesAuth_$2:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesAuth:(ImActorModelModulesAuth *)outer$
                                        withInt:(jint)capture$0 {
  this$0_ = outer$;
  val$code_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$code_ = val$code_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$2)

@implementation ImActorModelModulesAuth_$2_$1


#line 160
- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseAuth *)response {
  
#line 161
  [((id<DKPreferencesStorage>) nil_chk([this$0_->this$0_ preferences])) putBool:ImActorModelModulesAuth_get_KEY_AUTH_() withValue:YES];
  this$0_->this$0_->state_ = AMAuthStateEnum_get_LOGGED_IN();
  this$0_->this$0_->myUid__ = [((ImActorModelApiUser *) nil_chk([((ImActorModelApiRpcResponseAuth *) nil_chk(response)) getUser])) getId];
  [((id<DKPreferencesStorage>) nil_chk([this$0_->this$0_ preferences])) putInt:ImActorModelModulesAuth_get_KEY_AUTH_UID_() withValue:this$0_->this$0_->myUid__];
  [((ImActorModelModulesModules *) nil_chk([this$0_->this$0_ modules])) onLoggedIn];
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:[[ImActorModelModulesUpdatesInternalLoggedIn alloc] initWithImActorModelApiRpcResponseAuth:response withJavaLangRunnable:[[ImActorModelModulesAuth_$2_$1_$1 alloc] initWithImActorModelModulesAuth_$2_$1:self]]];
}


#line 176
- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  
#line 177
  if ([@"PHONE_CODE_EXPIRED" isEqual:[((AMRpcException *) nil_chk(e)) getTag]]) {
    [this$0_->this$0_ resetAuth];
  }
  else
#line 179
  if ([@"PHONE_NUMBER_UNOCCUPIED" isEqual:[e getTag]]) {
    [((id<DKPreferencesStorage>) nil_chk([this$0_->this$0_ preferences])) putInt:ImActorModelModulesAuth_get_KEY_SMS_CODE_() withValue:this$0_->val$code_];
    this$0_->this$0_->state_ = AMAuthStateEnum_get_SIGN_UP();
    [((id<AMCommandCallback>) nil_chk(val$callback_)) onResultWithId:AMAuthStateEnum_get_SIGN_UP()];
    return;
  }
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesAuth_$2_$1_$2 alloc] initWithImActorModelModulesAuth_$2_$1:self withAMRpcException:e]];
}

- (instancetype)initWithImActorModelModulesAuth_$2:(ImActorModelModulesAuth_$2 *)outer$
                             withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$2_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$2_$1)

@implementation ImActorModelModulesAuth_$2_$1_$1


#line 168
- (void)run {
  
#line 169
  this$0_->this$0_->this$0_->state_ = AMAuthStateEnum_get_LOGGED_IN();
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:this$0_->this$0_->this$0_->state_];
}

- (instancetype)initWithImActorModelModulesAuth_$2_$1:(ImActorModelModulesAuth_$2_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$2_$1_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$2_$1_$1)

@implementation ImActorModelModulesAuth_$2_$1_$2


#line 187
- (void)run {
  
#line 188
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:val$e_];
}

- (instancetype)initWithImActorModelModulesAuth_$2_$1:(ImActorModelModulesAuth_$2_$1 *)outer$
                                   withAMRpcException:(AMRpcException *)capture$0 {
  this$0_ = outer$;
  val$e_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$2_$1_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$e_ = val$e_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$2_$1_$2)

@implementation ImActorModelModulesAuth_$3


#line 200
- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  
#line 201
  [this$0_ requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestSignUp alloc] initWithLong:[((id<DKPreferencesStorage>) nil_chk([this$0_ preferences])) getLong:ImActorModelModulesAuth_get_KEY_PHONE_() withDefault:0] withNSString:
#line 202
  [((id<DKPreferencesStorage>) nil_chk([this$0_ preferences])) getString:ImActorModelModulesAuth_get_KEY_SMS_HASH_()] withNSString:JreStrcat("I",
#line 203
  [((id<DKPreferencesStorage>) nil_chk([this$0_ preferences])) getInt:ImActorModelModulesAuth_get_KEY_SMS_CODE_() withDefault:0]) withNSString:val$firstName_ withByteArray:this$0_->publicKey_ withByteArray:this$0_->deviceHash_ withNSString:
#line 207
  [((AMApiConfiguration *) nil_chk(this$0_->apiConfiguration_)) getAppTitle] withInt:
#line 208
  [this$0_->apiConfiguration_ getAppId] withNSString:[this$0_->apiConfiguration_ getAppKey] withBoolean:val$isSilent_] withAMRpcCallback:
#line 209
  [[ImActorModelModulesAuth_$3_$1 alloc] initWithImActorModelModulesAuth_$3:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesAuth:(ImActorModelModulesAuth *)outer$
                                   withNSString:(NSString *)capture$0
                                    withBoolean:(jboolean)capture$1
                                   withNSString:(NSString *)capture$2 {
  this$0_ = outer$;
  val$firstName_ = capture$0;
  val$isSilent_ = capture$1;
  val$avatarPath_ = capture$2;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$3 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$firstName_ = val$firstName_;
  other->val$isSilent_ = val$isSilent_;
  other->val$avatarPath_ = val$avatarPath_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$3)

@implementation ImActorModelModulesAuth_$3_$1


#line 211
- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseAuth *)response {
  
#line 212
  [((id<DKPreferencesStorage>) nil_chk([this$0_->this$0_ preferences])) putBool:ImActorModelModulesAuth_get_KEY_AUTH_() withValue:YES];
  this$0_->this$0_->state_ = AMAuthStateEnum_get_LOGGED_IN();
  this$0_->this$0_->myUid__ = [((ImActorModelApiUser *) nil_chk([((ImActorModelApiRpcResponseAuth *) nil_chk(response)) getUser])) getId];
  [((id<DKPreferencesStorage>) nil_chk([this$0_->this$0_ preferences])) putInt:ImActorModelModulesAuth_get_KEY_AUTH_UID_() withValue:this$0_->this$0_->myUid__];
  [((ImActorModelModulesModules *) nil_chk([this$0_->this$0_ modules])) onLoggedIn];
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:[[ImActorModelModulesUpdatesInternalLoggedIn alloc] initWithImActorModelApiRpcResponseAuth:response withJavaLangRunnable:[[ImActorModelModulesAuth_$3_$1_$1 alloc] initWithImActorModelModulesAuth_$3_$1:self]]];
  
#line 224
  [((ImActorModelModulesProfile *) nil_chk([((ImActorModelModulesModules *) nil_chk([this$0_->this$0_ modules])) getProfile])) changeAvatarWithNSString:this$0_->val$avatarPath_];
}


#line 228
- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  
#line 229
  if ([@"PHONE_CODE_EXPIRED" isEqual:[((AMRpcException *) nil_chk(e)) getTag]]) {
    [this$0_->this$0_ resetAuth];
  }
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesAuth_$3_$1_$2 alloc] initWithImActorModelModulesAuth_$3_$1:self withAMRpcException:e]];
}

- (instancetype)initWithImActorModelModulesAuth_$3:(ImActorModelModulesAuth_$3 *)outer$
                             withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$3_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$3_$1)

@implementation ImActorModelModulesAuth_$3_$1_$1


#line 219
- (void)run {
  
#line 220
  this$0_->this$0_->this$0_->state_ = AMAuthStateEnum_get_LOGGED_IN();
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:this$0_->this$0_->this$0_->state_];
}

- (instancetype)initWithImActorModelModulesAuth_$3_$1:(ImActorModelModulesAuth_$3_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$3_$1_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$3_$1_$1)

@implementation ImActorModelModulesAuth_$3_$1_$2


#line 234
- (void)run {
  
#line 235
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:val$e_];
}

- (instancetype)initWithImActorModelModulesAuth_$3_$1:(ImActorModelModulesAuth_$3_$1 *)outer$
                                   withAMRpcException:(AMRpcException *)capture$0 {
  this$0_ = outer$;
  val$e_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesAuth_$3_$1_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$e_ = val$e_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAuth_$3_$1_$2)
