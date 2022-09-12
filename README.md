# Bidstack AppLovin Adapter iOS installation guide

The Bidstack AppLovin Adapter for iOS allows you to display Interstitial and Rewarded ads in your app through AppLovin MAX Mediation.

## Table of contents

- [Prerequisites](#prerequisites)
- [Integration](#integration)
- [Supported versions](#supported-versions)

## Prerequisites

Required: iOS version 11+

Required: If you're planning to integrate adapter manually, then you need to download **BidstackCustomAdapterAppLovin.xcframework** and **BidstackMobileAdsSDK.xcframework** from [here](https://console.bidstack.com/developer/downloads) (Look for AppLovin MAX Adapter -> iOS).


Before integrating the adapter you will need to set up the Bidstack network on your AppLovin account as documented [here](https://dash.applovin.com/documentation/mediation/unreal/mediation-setup/custom-sdk#step-1.-add-custom-sdk-network-settings) or follow the instruction  in the header [Configure AppLovin MAX account settings](#configure-applovin-max-account-settings) and integrate the AppLovin SDK as documented [here](https://dash.applovin.com/documentation/mediation/ios/getting-started/integration).

#### Configure AppLovin MAX account settings

1. Login into MAX Dashboard and go to **MAX > Mediation > Manage > Networks**. Then select `Click here to add a Custom Network` at the bottom of the page.

<img src="images/adding-custom-network.jpg" width="700"/>

2. When prompted for `Network Type` choose `SDK`
3. In `Custom Network Name` field enter `Bidstack Ads`
4. In `iOS Adapter Class Name` enter `AppLovinBidstackMediationAdapter`

<img src="images/custom-network.png" width="700"/>

5. Then click on `Save`

**Note**: You may need to wait several minutes until AppLovin SDK will recognize Bidstack Adapter.

##### Configure app

You will need to gather API key and ad unit ID's which can be obtained in [AdConsole](https://console.bidstack.com/auth/login).
Once you have obtained the credentials, set them up in your AppLovin account as documented
[here](https://dash.applovin.com/documentation/mediation/ios/mediation-setup/custom-sdk).

1. In MAX Dashboard go to **MAX > Mediation > Manage > Ad Units** select or create ad unit for which you want to add an adapter.

<img src="images/ad-unit-selecting.png" width="700"/>

2. At the bottom of the page expand Bidstack Custom Network and enable it. Here you will need to enter the API key and ad unit ID from the AdConsole. Also, you can manually specify the CPM Price to prioritize Bidstack Ads.
3. `App ID` is the API key you retrieved from the AdConsole
4. `Placement ID` is `Ad unit ID` you retrieved from the AdConsole

<img src="images/adapter-settings.jpg" width="700"/>

5. Login into your AdConsole account and add a new game or select existing

<img src="images/selecting-game.jpg" width="700"/>

6. From the navigation menu select `SDK control panel` and copy the API key. Paste this API key in the MAX dashboard

<img src="images/adConsole-api-key.jpg" width="700"/>

7. From the navigation menu select `Ad units`. And then create and copy ad unit id. Also, paste the ad unit id in the MAX dashboard

<img src="images/adConsole-adUnit-id.jpg" width="700"/>


## Integration 

There are two ways how you can integrate **BidstackCustomAdapterAppLovin** into your project - using cocoapods or adding xcframeworks manually. 

### 1. Using cocoapods

Add to your podfile:
`pod 'BidstackCustomAdapterAppLovin', '~> 1.7.0'`

That's it! Now you can run `pod install` from your Terminal. **BidstackCustomAdapterAppLovin** and **BidstackMobileAdsSDK** will be installed automatically. No additional steps needed.


### 2. Add xcframeworks manually

#### 1. Create **Frameworks** folder

First of all, double check if your Xcode project contains a **Frameworks** folder in project navigator. If it doesn’t, you have to create one. The **Frameworks** folder is not added by default in latest Xcode and it’s a good practice to keep your frameworks there.


#### 2. Add **BidstackCustomAdapterAppLovin.xcframework**, **BidstackMobileAdsSDK.xcframework** and **OMSDK_Bidstack.xcframework** to Frameworks folder

Drag and drop frameworks from Finder into the **Frameworks** folder. Make sure that the destination of drag is just under the **Frameworks** folder:

<img src="images/drop-frameworks" width="700">

Then, make sure the following options are selected for adding files. Both “Copy items if needed” and “Create groups” should be checked and selected. Click Finish.

<img src="images/bcad-3.png" width="500">

#### 3. Embed all frameworks in project's target

In order to make sure that the framework will get copied to your app’s binary, follow these steps:

1. Navigate to your project settings by clicking on it in the project navigator. 
2. Make sure that your target is selected and General tab is open.
3. Select “Embed & Sign” for your newly added **BidstackCustomAdapterAppLovin.xcframework**, **BidstackMobileAdsSDK.xcframework** and **OMSDK_Bidstack.xcframework**

![](images/bcad-4.png)

#### 4. Link **BidstackCustomAdapterAppLovin.xcframework**, **BidstackMobileAdsSDK.xcframework** and **OMSDK_Bidstack.xcframework** with your project

Navigate to the Build Phases tab, disclose the “Link Binary With Libraries” list and make sure your framework is included in the list. It should already be included by default after following the steps above, however in case it’s not – click on the + button and add it.

Then make sure all framework Status is **Required**

![](images/bcad-5.png)


The **BidstackCustomAdapterAppLovin.xcframework** and **BidstackMobileAdsSDK.xcframework** is now fully added and integrated with your Xcode project. No additional setup is needed.

## Supported versions

Supported **AppLovinSDK** versions: 11.3.0 and up

Supported **iOS** versions: version 11+
