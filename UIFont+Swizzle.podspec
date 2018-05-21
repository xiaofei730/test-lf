Pod::Spec.new do |s|
  s.name         = "UIFont+Swizzle"
  s.version      = "1.0.0"
  s.summary      = "A custom UIFont that can modify Font."
  s.homepage     = "https://github.com/xiaofei730/test-lf.git"
  s.license      = "MIT"
  s.author             = { "noob" => "337262953@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/xiaofei730/test-lf.git", :tag => "1.0.0" }
  s.source_files  = 'UIFont+Swizzle/**/*.{h,m}'
  s.requires_arc = true

end
