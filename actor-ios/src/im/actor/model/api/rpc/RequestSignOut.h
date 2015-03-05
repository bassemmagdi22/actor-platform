//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSignOut.java
//

#ifndef _ImActorModelApiRpcRequestSignOut_H_
#define _ImActorModelApiRpcRequestSignOut_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestSignOut_HEADER 84

@interface ImActorModelApiRpcRequestSignOut : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestSignOut *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)init;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestSignOut)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestSignOut *ImActorModelApiRpcRequestSignOut_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestSignOut, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestSignOut)

#endif // _ImActorModelApiRpcRequestSignOut_H_
