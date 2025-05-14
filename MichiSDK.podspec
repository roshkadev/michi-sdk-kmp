# MichiSDK.podspec - For Cocoapods Distribution using Git Source
# WARNING: Committing binary frameworks directly to Git is generally discouraged.
#          Consider using the :http source with release assets instead.

Pod::Spec.new do |spec|
  spec.name         = 'MichiSDK'
  spec.version      = '1.0.7'
  spec.summary      = 'MichiSDK: Multiplatform module for 2FA, user management, and secure operations.'
  spec.homepage     = 'https://github.com/roshkadev/michi-sdk-kmp' # Use the public HTTPS URL here
  spec.license      = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Roshka. All rights reserved.' }
  spec.authors      = { 'Roshka' => 'mobile@roshka.com' }

  # --- Source ---
  # This section defines the remote location of the XCFramework zip archive
  spec.source = {
     # Replace '1.0.4' with the actual tag corresponding to this version.
     :http => 'https://github.com/roshkadev/michi-sdk-kmp/releases/download/1.0.7/MichiSDK.xcframework.zip', # UPDATE this URL post-release creation.
     :sha256 => 'a83d82f5109348f4def56eec79d1f10ce46472951a4e4ff1a0a72e9d23a5e96e' # UPDATE this with the calculated checksum.
  }
  # --- Platform ---
  spec.ios.deployment_target = '12.0'
  spec.swift_version = '5.9' # Ensure this matches what your framework requires/supports

  # --- Framework ---
  # This tells Cocoapods where to find the .xcframework within the checked-out repository tag.
  # Assumes MichiSDK.xcframework is at the root of the repository.
  # If you place it in a subdirectory (e.g., 'Frameworks/'), change this path:
  spec.vendored_frameworks = 'MichiSDK.xcframework'

  # --- Dependencies ---
  spec.libraries = 'c++', 'z' # Include only necessary system libraries

  # Add framework dependencies if needed
  # spec.frameworks = 'UIKit', 'Foundation', 'Security'

  # --- Build Settings ---
  # No script phases or xcconfig needed for binary distribution

end
