//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSubscribeToOnline.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/UserOutPeer.h"
#include "im/actor/model/api/rpc/RequestSubscribeToOnline.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcRequestSubscribeToOnline () {
 @public
  id<JavaUtilList> users_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSubscribeToOnline, users_, id<JavaUtilList>)

@implementation ImActorModelApiRpcRequestSubscribeToOnline

+ (ImActorModelApiRpcRequestSubscribeToOnline *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSubscribeToOnline_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users {
  if (self = [super init]) {
    self->users_ = users;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _users = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_users addWithId:[[ImActorModelApiUserOutPeer alloc] init]];
  }
  self->users_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_users];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->users_];
}

- (NSString *)description {
  NSString *res = @"rpc SubscribeToOnline{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"users=", [((id<JavaUtilList>) nil_chk(self->users_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSubscribeToOnline_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestSubscribeToOnline *)other {
  [super copyAllFieldsTo:other];
  other->users_ = users_;
}

@end

ImActorModelApiRpcRequestSubscribeToOnline *ImActorModelApiRpcRequestSubscribeToOnline_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSubscribeToOnline_init();
  return ((ImActorModelApiRpcRequestSubscribeToOnline *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestSubscribeToOnline alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSubscribeToOnline)
