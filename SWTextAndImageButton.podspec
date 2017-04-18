
Pod::Spec.new do |s|
  s.name             = 'SWTextAndImageButton'
  s.version          = '0.1.0'
  s.summary          = 'button 的小封装'
  s.description      = <<-DESC
button 的小封装,支持xib,使用简单
                       DESC
  s.homepage         = 'https://github.com/isongwei/SWTextAndImageButton'
  s.license          = 'MIT'
  s.author           = { 'i_songwei@163.com' => 'i_songwei@163.com' }
  s.source           = { :git => 'https://github.com/isongwei/SWTextAndImageButton.git', :tag => s.version.to_s }
  s.ios.deployment_target = '6.0'
  s.source_files = 'SWTextAndImageButton/Classes/**/*'

end
