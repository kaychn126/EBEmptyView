Pod::Spec.new do |s|
  s.name         = "EBEmptyView"
  s.version      = "0.0.5"
  s.summary      = "自定义空白页面"
  s.description  = <<-DESC
                    自定义空白页面，scrollview的category
                   DESC
  s.homepage     = "https://github.com/kaychn126/EBEmptyView.git"

  s.license      = 'MIT'
  s.author       = { "kaychn" => "kaychn@126.com" }
  s.source       = { :git => "https://github.com/kaychn126/EBEmptyView.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'EmptyView/*.{h,m}'
  s.resources = 'EmptyView/*.png'

  s.frameworks = 'Foundation', 'UIKit'
  #s.private_header_files = 'Classes/ios/private/*.h'

end
