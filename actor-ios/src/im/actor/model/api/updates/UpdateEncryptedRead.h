//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateEncryptedRead.java
//

#ifndef _ImActorModelApiUpdatesUpdateEncryptedRead_H_
#define _ImActorModelApiUpdatesUpdateEncryptedRead_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiPeer;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateEncryptedRead_HEADER 52

@interface ImActorModelApiUpdatesUpdateEncryptedRead : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateEncryptedRead *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                   withLong:(jlong)rid
                                   withLong:(jlong)readDate;

- (instancetype)init;

- (ImActorModelApiPeer *)getPeer;

- (jlong)getRid;

- (jlong)getReadDate;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateEncryptedRead)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateEncryptedRead *ImActorModelApiUpdatesUpdateEncryptedRead_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateEncryptedRead, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateEncryptedRead)

#endif // _ImActorModelApiUpdatesUpdateEncryptedRead_H_
