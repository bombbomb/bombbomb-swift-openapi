Pod::Spec.new do |s|
  s.name = 'bombbomb-swift-openapi'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.version = '2.0.24005'
  s.source = { :git => 'git@github.com:swagger-api/swagger-mustache.git', :tag => 'v1.0.0' }
  s.authors = 'Swagger Codegen'
  s.license = 'Apache License, Version 2.0'
  s.homepage = 'https://github.com/bombbomb/bombbomb-swift-openapi'
  s.summary = 'Auto-generated swift API'
  s.description = 'We make hits!'
  s.source_files = 'bombbomb-swift-openapi/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 3.1.5'
end
