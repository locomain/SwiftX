Pod::Spec.new do |s|

  s.name         = "SwiftySwift"
  s.version      = "1.0.2"
  s.summary      = "Library that aims for easy pointers use and async tasks"
  s.description  = "Swift library that aims for easy pointers use and async tasks"

  s.homepage     = "https://github.com/locomain/SwiftySwift"
  s.license        = { :type => "Apache License, Version 2.0" }

  s.author             = { "Angelo" => "locomain12@gmail.com" }
  s.osx.deployment_target = "10.9"
  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/locomain/SwiftySwift.git", :tag => "#{s.version}" }
  s.source_files  = "Sources/**/*.swift"
  s.exclude_files = "Sources/Exclude"

end
