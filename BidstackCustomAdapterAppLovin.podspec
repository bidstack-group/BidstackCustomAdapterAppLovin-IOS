Pod::Spec.new do |spec|

  spec.name         = "BidstackCustomAdapterAppLovin"
  spec.version      = "1.8.0"
  spec.summary      = "Bidstack Custom Adapter for AppLovin v11.3.0+"

  spec.description  = <<-DESC
			  The Bidstack AppLovin Adapter for iOS allows you to display Interstitial and Rewarded ads in your app through AppLovin.
		      DESC

  spec.homepage     = "https://bidstack.com"

  spec.license      = { :type => 'MIT', :file => 'LICENSE' }

  spec.author       = { "Liene Ungure" => "liene.alka@bidstack.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = '5.0'
    
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
                                   							                                   
  spec.source       = { :git => "https://github.com/bidstack-group/BidstackCustomAdapterAppLovin-IOS.git", :tag => "v#{spec.version}" }
  
  spec.vendored_frameworks = "BidstackCustomAdapterAppLovin.xcframework"
  
  spec.dependency 'AppLovinSDK', '~> 11'
  spec.dependency 'BidstackMobileAdsSDK', '~> 1.8.0'

end
