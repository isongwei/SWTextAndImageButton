
Pod::Spec.new do |s|
  s.name             = 'SWTextAndImageButton'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SWTextAndImageButton.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/isongwei/SWTextAndImageButton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i_songwei@163.com' => 'i_songwei@163.com' }
  s.source           = { :git => 'https://github.com/isongwei/SWTextAndImageButton.git', :tag => s.version.to_s }
  s.ios.deployment_target = '6.0'
  s.source_files = 'SWTextAndImageButton/Classes/**/*'

end
