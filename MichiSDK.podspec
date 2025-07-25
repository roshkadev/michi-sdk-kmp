# MichiSDK.podspec - For Cocoapods Distribution using Git Source

Pod::Spec.new do |spec|
  spec.name         = 'MichiSDK'
  spec.version      = '1.0.16'
  spec.summary      = 'MichiSDK: Multiplatform module for 2FA, user management, and secure operations.'
  spec.homepage     = 'https://github.com/roshkadev/michi-sdk-kmp' # Use the public HTTPS URL here
  spec.license      = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Roshka. All rights reserved.' }
  spec.authors      = { 'Roshka' => 'mobile@roshka.com' }

  # --- Source ---
  # This section defines the remote location of the XCFramework zip archive
  spec.source = {
     :http => 'https://github.com/roshkadev/michi-sdk-kmp/releases/download/1.0.16/MichiSDK.xcframework.zip', 
     :sha256 => 'c933c803887f53a5c9c13e5e918b3adba7f67de6f5c1d058ec7c723ba97c9c65' 
  }
  # --- Platform ---
  spec.ios.deployment_target = '12.0'
  spec.swift_version = '5.9' # Ensure this matches what your framework requires/supports

  # --- Framework ---
  spec.vendored_frameworks = 'MichiSDK.xcframework'

  # --- Dependencies ---
  spec.libraries = 'c++', 'z' # Include only necessary system libraries

  # Add framework dependencies if needed
  # spec.frameworks = 'UIKit', 'Foundation', 'Security'

  # --- Build Settings ---
  # No script phases or xcconfig needed for binary distribution

end
