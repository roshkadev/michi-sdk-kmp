# MichiSDK.podspec - For Cocoapods Distribution using Git Source

Pod::Spec.new do |spec|
  spec.name         = 'MichiSDK'
  spec.version = '1.0.1004'
  spec.summary      = 'MichiSDK: Multiplatform module for 2FA, user management, and secure operations.'
  spec.homepage     = 'https://github.com/roshkadev/michi-sdk-kmp' # Use the public HTTPS URL here
  spec.license      = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Roshka. All rights reserved.' }
  spec.authors      = { 'Roshka' => 'mobile@roshka.com' }

  # --- Source ---
  # This section defines the remote location of the XCFramework zip archive
  spec.source = {
     :http => 'https://github.com/roshkadev/michi-sdk-kmp/releases/download/1.0.17/MichiSDK.xcframework.zip', 
     :sha256 => '1fea9035202e323041a8f165ef91671dda707dc33f7e11dec8d8f8c6f3064502' 
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
