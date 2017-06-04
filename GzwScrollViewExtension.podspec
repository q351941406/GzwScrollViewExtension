

Pod::Spec.new do |s|
  s.name             = 'GzwScrollViewExtension'
  s.version          = '1.3.1'
  s.license   	= { :type => 'MIT' }
  s.homepage         = 'https://github.com/q351941406/GzwScrollViewExtension'
  s.authors           = { '甘正威' => '351941406@qq.com' }
  s.summary          = 'The classification of a UIScrollView on iOS.'
  s.source           = { :git => 'https://github.com/q351941406/GzwScrollViewExtension.git', :tag => '1.3.1' }
  s.ios.deployment_target = '7.0'
  s.source_files = 'GzwScrollViewExtension/*'
  s.frameworks = 'Foundation','CoreGraphics','UIKit'

end