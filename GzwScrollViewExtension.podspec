
Pod::Spec.new do |spec|
  spec.name             = 'GzwScrollViewExtension'
  spec.version          = '1.3.0'
  #spec.license   	= { :type => 'MIT' }
  spec.homepage         = 'https://github.com/q351941406/GzwScrollViewExtension'
  spec.authors           = { '甘正威' => '351941406@qq.com' }
  spec.summary          = 'The classification of a UIScrollView on iOS.'
  spec.source           = { :git => 'https://github.com/q351941406/GzwScrollViewExtension.git', :tag => '1.3.0' }
  spec.ios.deployment_target = '7.0'
  spec.source_files = 'GzwScrollViewExtension'
  spec.frameworks = 'Foundation','CoreGraphics','UIKit'

end
