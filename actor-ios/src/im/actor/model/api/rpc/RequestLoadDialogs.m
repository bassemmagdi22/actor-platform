//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestLoadDialogs.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestLoadDialogs.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestLoadDialogs () {
 @public
  jlong startDate_;
  jint limit_;
}
@end

@implementation ImActorModelApiRpcRequestLoadDialogs

+ (ImActorModelApiRpcRequestLoadDialogs *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestLoadDialogs_fromBytesWithByteArray_(data);
}

- (instancetype)initWithLong:(jlong)startDate
                     withInt:(jint)limit {
  if (self = [super init]) {
    self->startDate_ = startDate;
    self->limit_ = limit;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jlong)getStartDate {
  return self->startDate_;
}

- (jint)getLimit {
  return self->limit_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->startDate_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->limit_ = [values getIntWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->startDate_];
  [writer writeIntWithInt:2 withInt:self->limit_];
}

- (NSString *)description {
  NSString *res = @"rpc LoadDialogs{";
  res = JreStrcat("$$", res, JreStrcat("$J", @"startDate=", self->startDate_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", limit=", self->limit_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestLoadDialogs_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestLoadDialogs *)other {
  [super copyAllFieldsTo:other];
  other->startDate_ = startDate_;
  other->limit_ = limit_;
}

@end

ImActorModelApiRpcRequestLoadDialogs *ImActorModelApiRpcRequestLoadDialogs_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestLoadDialogs_init();
  return ((ImActorModelApiRpcRequestLoadDialogs *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestLoadDialogs alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestLoadDialogs)
