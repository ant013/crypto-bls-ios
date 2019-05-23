#import <Foundation/Foundation.h>

@interface BLSKey2: NSObject

+ (BOOL)verify:(NSData *)messageDigest publicKey:(NSData *)publicKeyData signature:(NSData *)signature;

@end
