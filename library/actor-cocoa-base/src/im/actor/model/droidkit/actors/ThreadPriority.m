//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/ThreadPriority.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ThreadPriority.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void DKThreadPriorityEnum_initWithNSString_withInt_(DKThreadPriorityEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static DKThreadPriorityEnum *new_DKThreadPriorityEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(DKThreadPriorityEnum)

DKThreadPriorityEnum *DKThreadPriorityEnum_values_[3];

@implementation DKThreadPriorityEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  DKThreadPriorityEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *DKThreadPriorityEnum_values() {
  DKThreadPriorityEnum_initialize();
  return [IOSObjectArray arrayWithObjects:DKThreadPriorityEnum_values_ count:3 type:DKThreadPriorityEnum_class_()];
}

+ (IOSObjectArray *)values {
  return DKThreadPriorityEnum_values();
}

+ (DKThreadPriorityEnum *)valueOfWithNSString:(NSString *)name {
  return DKThreadPriorityEnum_valueOfWithNSString_(name);
}

DKThreadPriorityEnum *DKThreadPriorityEnum_valueOfWithNSString_(NSString *name) {
  DKThreadPriorityEnum_initialize();
  for (int i = 0; i < 3; i++) {
    DKThreadPriorityEnum *e = DKThreadPriorityEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [DKThreadPriorityEnum class]) {
    DKThreadPriorityEnum_HIGH = new_DKThreadPriorityEnum_initWithNSString_withInt_(@"HIGH", 0);
    DKThreadPriorityEnum_NORMAL = new_DKThreadPriorityEnum_initWithNSString_withInt_(@"NORMAL", 1);
    DKThreadPriorityEnum_LOW = new_DKThreadPriorityEnum_initWithNSString_withInt_(@"LOW", 2);
    J2OBJC_SET_INITIALIZED(DKThreadPriorityEnum)
  }
}

@end

void DKThreadPriorityEnum_initWithNSString_withInt_(DKThreadPriorityEnum *self, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

DKThreadPriorityEnum *new_DKThreadPriorityEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  DKThreadPriorityEnum *self = [DKThreadPriorityEnum alloc];
  DKThreadPriorityEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKThreadPriorityEnum)
