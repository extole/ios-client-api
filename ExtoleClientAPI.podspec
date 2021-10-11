Pod::Spec.new do |s|
  s.name = 'ExtoleClientAPI'
  s.ios.deployment_target = '12.0'
  s.platform = :ios, "12.0"
  s.version = '0.0.5'
  s.source = { :git => 'https://github.com/extole/ios-client-api-stub.git', :tag => "#{s.version}" }
  s.authors = 'Extole'
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.homepage = 'https://github.com/extole/'
  s.summary = 'ExtoleClientAPI'
  s.source_files = 'Sources/ExtoleClientAPI/**/*.{swift}'
  s.dependency 'Alamofire', '~> 4.9.1'
  s.swift_version = '5.0'
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
