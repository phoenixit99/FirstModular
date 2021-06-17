Pod::Spec.new do |spec|
  spec.name = "LoginFramwork"
  spec.version = "1.0.0"
  spec.summary = "Sample framework from blog post, not for real world use.Functional JSON parsing library for Swift."
  spec.homepage = "https://github.com/phoenixit99/LoginFramwork.git"
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.authors = {
    "Hoang Nguyen" => 'hoanguit@gmail.com'
  }
  spec.social_media_url = "https://github.com/phoenixit99/LoginFramwork.git"

  spec.source = { :git => "https://github.com/phoenixit99/LoginFramwork.git", :tag => "v#{spec.version}", :submodules => true }
  spec.source_files  ="LoginFramwork/**/*.{h,swift}"
  spec.requires_arc = true
  spec.platform     = :ios
  spec.ios.deployment_target = "10.0"

  spec.dependency "Moya"
end
