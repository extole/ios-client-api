Pod::Spec.new do |s|
  s.name = 'ExtoleClientAPI'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '0.0.1'
  s.source = { :git => 'https://github.com/extole/ios-client-api-stub.git', :tag => s.version }
  s.requires_arc = true
  s.authors = 'Extole'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/extole/'
  s.summary = 'ExtoleClientAPI'
  s.source_files = 'ExtoleClientAPI/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.9.0'
end
