//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/AppStateVM.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/AppStateVM.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/engine/PreferencesStorage.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/viewmodel/AppState.h"
#include "im/actor/model/viewmodel/AppStateVM.h"
#include "java/lang/Boolean.h"

@interface AMAppStateVM () {
 @public
  ImActorModelModulesModules *modules_;
  AMValueModel *isDialogsEmpty_;
  AMValueModel *isContactsEmpty_;
  AMValueModel *appState_;
}
@end

J2OBJC_FIELD_SETTER(AMAppStateVM, modules_, ImActorModelModulesModules *)
J2OBJC_FIELD_SETTER(AMAppStateVM, isDialogsEmpty_, AMValueModel *)
J2OBJC_FIELD_SETTER(AMAppStateVM, isContactsEmpty_, AMValueModel *)
J2OBJC_FIELD_SETTER(AMAppStateVM, appState_, AMValueModel *)


#line 10
@implementation AMAppStateVM


#line 16
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  if (self = [super init]) {
    
#line 17
    self->modules_ = modules;
    
#line 18
    self->isDialogsEmpty_ = [[AMValueModel alloc] initWithNSString:@"app.dialogs.empty" withId:JavaLangBoolean_valueOfWithBoolean_([((id<DKPreferencesStorage>) nil_chk([((ImActorModelModulesModules *) nil_chk(modules)) getPreferences])) getBool:@"app.dialogs.empty" withDefault:YES])];
    
#line 19
    self->isContactsEmpty_ = [[AMValueModel alloc] initWithNSString:@"app.contacts.empty" withId:JavaLangBoolean_valueOfWithBoolean_([((id<DKPreferencesStorage>) nil_chk([modules getPreferences])) getBool:@"app.contacts.empty" withDefault:YES])];
    
#line 20
    AMLog_dWithNSString_withNSString_(@"AppStateVM", JreStrcat("$@", @"loaded:", [isContactsEmpty_ get]));
    
#line 21
    self->appState_ = [[AMValueModel alloc] initWithNSString:@"app.state" withId:AMAppStateEnum_get_READY()];
  }
  return self;
}


#line 24
- (void)onDialogsChangedWithBoolean:(jboolean)isEmpty {
  @synchronized(self) {
    
#line 25
    AMLog_dWithNSString_withNSString_(@"AppStateVM", JreStrcat("$Z", @"onDialogsChanged:", isEmpty));
    if ([((JavaLangBoolean *) nil_chk([((AMValueModel *) nil_chk(isDialogsEmpty_)) get])) booleanValue] != isEmpty) {
      AMLog_dWithNSString_withNSString_(@"AppStateVM", JreStrcat("$Z$", @"onDialogsChanged:", isEmpty, @": apply"));
      [((id<DKPreferencesStorage>) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getPreferences])) putBool:@"app.dialogs.empty" withValue:isEmpty];
      [isDialogsEmpty_ changeWithId:JavaLangBoolean_valueOfWithBoolean_(isEmpty)];
    }
  }
}


#line 33
- (void)onContactsChangedWithBoolean:(jboolean)isEmpty {
  @synchronized(self) {
    
#line 34
    AMLog_dWithNSString_withNSString_(@"AppStateVM", JreStrcat("$Z", @"onContactsChanged:", isEmpty));
    if ([((JavaLangBoolean *) nil_chk([((AMValueModel *) nil_chk(isContactsEmpty_)) get])) booleanValue] != isEmpty) {
      AMLog_dWithNSString_withNSString_(@"AppStateVM", JreStrcat("$Z$", @"onContactsChanged:", isEmpty, @": apply"));
      [((id<DKPreferencesStorage>) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getPreferences])) putBool:@"app.contacts.empty" withValue:isEmpty];
      [isContactsEmpty_ changeWithId:JavaLangBoolean_valueOfWithBoolean_(isEmpty)];
    }
  }
}


#line 42
- (AMValueModel *)getIsDialogsEmpty {
  
#line 43
  return isDialogsEmpty_;
}


#line 46
- (AMValueModel *)getIsContactsEmpty {
  
#line 47
  return isContactsEmpty_;
}


#line 50
- (AMValueModel *)getAppState {
  
#line 51
  return appState_;
}

- (void)copyAllFieldsTo:(AMAppStateVM *)other {
  [super copyAllFieldsTo:other];
  other->modules_ = modules_;
  other->isDialogsEmpty_ = isDialogsEmpty_;
  other->isContactsEmpty_ = isContactsEmpty_;
  other->appState_ = appState_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMAppStateVM)
