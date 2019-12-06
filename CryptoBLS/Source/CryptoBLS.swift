import Foundation

public struct CryptoBLS {

    public static func verify(messageDigest: Data, pubKey: Data, signature: Data) -> Bool {
        return BLSKey.verify(messageDigest, publicKey: pubKey, signature: signature)
    }

}
