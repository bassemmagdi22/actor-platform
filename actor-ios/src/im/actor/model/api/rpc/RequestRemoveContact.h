//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestRemoveContact.java
//

#ifndef _ImActorModelApiRpcRequestRemoveContact_H_
#define _ImActorModelApiRpcRequestRemoveContact_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestRemoveContact_HEADER 89

@interface ImActorModelApiRpcRequestRemoveContact : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestRemoveContact *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash;

- (instancetype)init;

- (jint)getUid;

- (jlong)getAccessHash;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestRemoveContact)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestRemoveContact *ImActorModelApiRpcRequestRemoveContact_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestRemoveContact, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestRemoveContact)

#endif // _ImActorModelApiRpcRequestRemoveContact_H_
