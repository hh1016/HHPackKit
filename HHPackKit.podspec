
Pod::Spec.new do |s|
  s.name             = 'HHPackKit'
  s.version          = '0.1.0'
  s.summary          = '一个UI基础控件库，使用链式编程思想对常用的控件进行封装'

  s.description      = "UI基础控件库,包含UIView,UILabel,UIButton,UITextFiled,UITextView,UITableView的封装"

  s.homepage         = 'https://github.com/hh1016'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hh1016' => '17735102867@163.com' }
  s.source           = { :git => 'https://github.com/hh1016/HHPackKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.source_files = 'HHPackKit/Classes/**/*'

  s.prefix_header_contents = '#import "HHKit.h"'
  
  
end
