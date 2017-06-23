
Pod::Spec.new do |s|
  s.name         = 'JKNumberKeyBoard'
  s.version      = '1.0.0'
  s.summary      = 'I love you , never change'
  s.homepage     = 'https://github.com/JKshared92/JKNumberKeyBoard'
  s.license      = 'MIT'
  s.author       = { '袁杰' => '506702341@qq.com' }
  s.source       = { :git => 'https://github.com/JKshared92/JKNumberKeyBoard.git', :tag => s.version, :submodules => true }
  s.source_files  ='JKNumberKeyBoard/*.{h,m}'
  s.requires_arc = true
  s.platform     = :ios, '6.0'

end
