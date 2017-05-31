
Pod::Spec.new do |s|
  s.name             = "GzwScrollViewExtension"
  s.version          = "1.3.0"
  s.summary          = "The classification of a UIScrollView on iOS."
  s.description      = <<-DESC
                       The classification of a UIScrollView on iOS, which implement by Objective-C.
                       DESC
  s.homepage         = "https://github.com/q351941406/GzwScrollViewExtension"
  s.license  	     = { :type => 'MIT' }
  s.author           = { "甘正威" => "351941406@qq.com" }
  s.source           = { :git => "https://github.com/q351941406/GzwScrollViewExtension.git", :tag => s.version }


  s.ios.deployment_target = "7.0"
  s.requires_arc = true

  s.source_files = 'GzwScrollViewExtension/GzwScrollViewExtension/**/*'
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end
