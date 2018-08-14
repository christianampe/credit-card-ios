Pod::Spec.new do |s|
    s.name                  = 'FlatCreditCard'
    s.version               = '0.0.1'
    s.summary               = 'A short description of FlatCreditCard.'
    s.description           = 'A longer description of FlatCreditCard.'
    s.homepage              = 'https://github.com/christianampe/FlatCreditCard'
    s.license               = { :type => 'MIT', :file => 'LICENSE' }
    s.author                = { 'christianampe' => 'christianampe.work@gmail.com' }
    s.source                = { :git => 'https://github.com/christianampe/FlatCreditCard.git', :tag => s.version.to_s }
    s.platform              = :ios
    s.ios.deployment_target = '9.3'
    s.swift_version         = '4.1'
    s.source_files = 'FlatCreditCard/Classes/**/*'
end
