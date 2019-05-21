#ifndef CRYPTOBLS_BLSKEY_H
#define CRYPTOBLS_BLSKEY_H

#import <Foundation/Foundation.h>
#import "CryptoBLS/BigIntTypes.h"

@interface BLSKey: NSObject

+ (BOOL)verify:(NSData *)messageDigest publicKey:(NSData *)publicKeyData signature:(NSData *)signature;

@end

#endif //CRYPTOBLS_BLSKEY_H
