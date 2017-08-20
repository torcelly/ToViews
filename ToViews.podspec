Pod::Spec.new do |s|
  s.name         = "ToViews"
  s.version      = "0.0.1"
  s.summary      = "Custom UIViews to create custom interface and new interactions."
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.description  = <<-DESC
			ToViews is a group of UIViews to create interface
			without images and custom interactions.
                  DESC

  s.homepage         = "https://github.com/torcelly/ToViews"
  # s.screenshots    = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.author           = { "Fernando Torcelly" => "fernando@torcelly.com" }
  s.social_media_url = "http://twitter.com/torcelly"
  s.source           = { :git => "https://github.com/torcelly/ToViews.git", :tag => "#{s.version}" }

  s.platform         = :ios
  s.requires_arc     = true

  s.source_files     = 'Source/*.swift'
  s.frameworks       = 'UIKit'

  s.ios.deployment_target = '8.0'

end
