//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/EmailToImport.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/EmailToImport.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiEmailToImport () {
 @public
  NSString *email_;
  NSString *name_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiEmailToImport, email_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiEmailToImport, name_, NSString *)

@implementation ImActorModelApiEmailToImport

- (instancetype)initWithNSString:(NSString *)email
                    withNSString:(NSString *)name {
  if (self = [super init]) {
    self->email_ = email;
    self->name_ = name;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (NSString *)getEmail {
  return self->email_;
}

- (NSString *)getName {
  return self->name_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->email_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->name_ = [values optStringWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->email_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->email_];
  if (self->name_ != nil) {
    [writer writeStringWithInt:2 withNSString:self->name_];
  }
}

- (NSString *)description {
  NSString *res = @"struct EmailToImport{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"email=", self->email_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", name=", self->name_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiEmailToImport *)other {
  [super copyAllFieldsTo:other];
  other->email_ = email_;
  other->name_ = name_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiEmailToImport)
