Pod::Spec.new do |spec|

  spec.name         = "BidstackCustomAdapterAppLovin"
  spec.version      = "2.3.2"
  spec.summary      = "Bidstack Custom Adapter for AppLovin v12.3.0+"

  spec.description  = <<-DESC
			  The Bidstack AppLovin Adapter for iOS allows you to display Interstitial and Rewarded ads in your app through AppLovin.
		      DESC

  spec.homepage     = "https://bidstack.com"

  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.preserve_path = "README.md"

  spec.author       = "Bidstack Limited"
  spec.platform     = :ios, "12.0"
  spec.swift_version = '5.0'
    
  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphoneos*]' => 'arm64', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
                                   							                                   
  spec.source       = { :git => "https://github.com/bidstack-group/BidstackCustomAdapterAppLovin-IOS.git", :tag => "v#{spec.version}" }
  
  spec.vendored_frameworks = "BidstackCustomAdapterAppLovin.xcframework"
  
  spec.dependency 'AppLovinSDK'
  spec.dependency 'BidstackMobileAdsSDK', '~> 2.3.2'
  

end
