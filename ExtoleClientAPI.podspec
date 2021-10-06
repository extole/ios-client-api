Pod::Spec.new do |s|
  s.name = 'ExtoleClientAPI'
  s.ios.deployment_target = '13.0'
  s.version = '0.0.1'
  s.source = { :git => 'https://github.com/extole/ios-client-api-stub.git', :tag => s.version }
  s.authors = 'Extole'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/extole/'
  s.summary = 'ExtoleClientAPI'
  s.source_files = '**/Sources/**/*'
  s.dependency 'Alamofire', '~> 4.9.1'
  s.swift_version = '5.0'
end
