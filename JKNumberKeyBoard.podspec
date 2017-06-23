#
#  Be sure to run `pod spec lint JKNumberKeyBoard.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "JKNumberKeyBoard"
  s.version      = "0.0.1"
  s.summary      = "I love you , never change"
  s.homepage     = "https://github.com/JKshared92/JKNumberKeyBoard"
  s.license      = "MIT"
  s.author       = { "袁杰" => "506702341@qq.com" }
  s.source       = { :git => "https://github.com/JKshared92/JKNumberKeyBoard.git", :tag => "#{s.version}" }
  s.source_files  ="JKNumberKeyBoard/*.{h,m}”
  s.requires_arc = true

end
