Pod::Spec.new do |s|
  s.name         = 'VLCFramework'
  s.version      = '4.0.0'
  s.summary      = 'VLCFramework - VLCKit wrapper with custom libass font support'
  s.description  = 'Locally built VLCKit xcframework with --ssa-fontfamily patch, supporting iOS, tvOS, and macOS.'
  s.homepage     = 'https://github.com/sunsx9316/VLCFramework'
  s.license      = { :type => 'LGPLv2.1' }
  s.author       = { 'VideoLAN' => '' }
  s.source       = { :git => 'https://github.com/sunsx9316/VLCFramework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.tvos.deployment_target = '13.0'
  s.osx.deployment_target = '12.0'

  s.vendored_frameworks = 'Binary/VLCKit.xcframework'
end
