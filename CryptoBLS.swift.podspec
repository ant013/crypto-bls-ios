Pod::Spec.new do |spec|
  spec.name = 'CryptoBLS'
  spec.version = '1.2.0'
  spec.summary = 'Crypto library for Swift'
  spec.description = <<-DESC
                       HSCryptoKit includes crypto functions that can be used in pure Swift. It supports openssl, secp256k1, base58, sha3 keccak256.
                       ```
                    DESC
  spec.homepage = 'https://github.com/ant013/crypto-bls-ios'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'Horizontal Systems' => 'hsdao@protonmail.ch' }
  spec.social_media_url = 'http://horizontalsystems.io/'

  spec.requires_arc = true
  spec.source = { git: 'https://github.com/horizontalsystems/crypto-kit-ios.git', tag: "#{spec.version}" }
  spec.source_files = 'CryptoBLS/**/*.{h,m,swift}'
  spec.module_map = 'CryptoBLS/CryptoBLS.modulemap'
  spec.ios.deployment_target = '10.0'
  spec.swift_version = '4.1'

  spec.pod_target_xcconfig = { 'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES',
                               'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                               'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}/CryptoBLS/Libraries',
                               'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/CryptoBLS/Libraries/bls/include"',
                               'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/CryptoBLS/Libraries/bls/lib"' }
  spec.preserve_paths = ['Setup', 'Libraries']

end
