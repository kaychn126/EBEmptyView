Pod::Spec.new do |s|
  s.name = 'EBEmptyView-framework'
  s.version = '0.0.3'
  s.summary = '自定义空白页面'
  s.license = 'MIT'
  s.authors = {"kaychn"=>"kaychn@126.com"}
  s.homepage = 'https://github.com/kaychn126/EBEmptyView.git'
  s.description = '自定义空白页面，scrollview的category'
  s.frameworks = ["Foundation", "UIKit"]
  s.requires_arc = true
  s.source       = { :git => "https://github.com/kaychn126/EBEmptyView.git", :tag => s.version.to_s }

  s.ios.deployment_target    = '7.0'
  s.ios.preserve_paths       = 'EBEmptyView-framework/ios/EBEmptyView.framework'
  # s.ios.public_header_files  = 'ios/EBEmptyView.framework/Versions/A/Headers/*.h'
  s.ios.resource             = 'EBEmptyView-framework/ios/EBEmptyView.framework/Versions/A/Resources/**/*'
  s.ios.vendored_frameworks  = 'EBEmptyView-framework/ios/EBEmptyView.framework'
end
