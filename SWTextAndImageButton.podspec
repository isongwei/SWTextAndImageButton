Pod::Spec.new do |s|
    s.name         = 'SWTextAndImageButton'
    s.version      = '0.0.1'
    s.summary      = '4种模式设置图片文字方向位置'
    s.homepage     = 'https://github.com/isongwei/SWTextAndImageButton'
    s.description      = <<-DESC
随便自定义Button,4种模式设置图片文字方向位置
                       DESC
    s.license      = 'MIT'
    s.author           = { 'i_songwei@163.com' => 'mail.com' }
    s.ios.deployment_target = '6.0'
    s.source       = {:git => 'https://github.com/isongwei/SWTextAndImageButton.git', :tag => s.version}
    s.source_files = 'SWTextAndImageButton/**/*.{h,m}'
end
