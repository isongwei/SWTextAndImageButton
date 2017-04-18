Pod::Spec.new do |s|
    s.name         = 'SWTextAndImageButton'
    s.version      = '0.1.0'
    s.summary      = '4种模式设置图片文字方向位置'
    s.homepage     = 'https://github.com/isongwei/SWTextAndImageButton'
    s.license      = 'MIT'
    s.authors      = {'iSongwei' => 'seven'}
    s.platform     = :ios, '6.0'
    s.source       = {:git => 'https://github.com/isongwei/SWTextAndImageButton.git', :tag => s.version}
    s.source_files = 'SWTextAndImageButton/**/*.{h,m}'
end
