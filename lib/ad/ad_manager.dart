import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_framework/flutter_framework.dart';

import 'banner_ironsource_listener.dart';

class AdManager {
  final unityAdsPlugin = UnityAdsPlugin();
  final ironSourceAdsPlugin = IronSourceAdsPlugin();
  final vungleAdsPlugin = VungleAdsPlugin();

  List<String> unityGameIdsAndroid = [
    '4073513',
    '4096697',
    '4207969',
    '4118283',
    '4098561',
    '4105935',
    '4174225',
    '4208061',
    '4106623',
    '4130155',
    '4072333',
    '4070579',
    '4086111',
    '4087931',
    '3884579',
    '4311099',
    '4311025',
    '4200487',
    '4310849',
    '4198257',
    '4311209',
  ];
  List<String> unityGameIdsIOS = [
    '5163860',
    '5182687',
    '5195626'
  ];

  List<String> ironSourceAppKeysAndroid = [
    'bfc1e335',
    'b7f273ad',
    'e953eec9',
    'f23cf4f9',
    'bc160f85',
    'ec7c8439',
    'e96336e9',
    'f1c240e9',
    'b91ce52d',
    'ec627299',
    'f1c19451',
    'ecedc7f9',
    'f1c2ed81',
    'f1c15ac9',
    'c02c6905',
    'f1c27a71',
    'f029b119',
    'f1c0ae31',
    'ed4df759',
    'f88f3f81',
    'f1569b71',
    'f029eaa1',
    'b7ed81fd',
  ];
  List<String> ironSourceAppKeysIOS = [
    '18a0a148d',
    '18dbd193d',
    '18ffea88d'
  ];

  void register() {
    unityAdsPlugin.initialize(
        unityGameID:
        Platform.isAndroid ?
        unityGameIdsAndroid[Random().nextInt(unityGameIdsAndroid.length)] :
        unityGameIdsIOS[Random().nextInt(unityGameIdsIOS.length)],
        testMode: false);
    ironSourceAdsPlugin.initialize(appKey:
    Platform.isAndroid ?
    ironSourceAppKeysAndroid[Random().nextInt(ironSourceAppKeysAndroid.length)] :
    ironSourceAppKeysIOS[Random().nextInt(ironSourceAppKeysIOS.length)]);

    ironSourceAdsPlugin.loadInterstitial();
    ironSourceAdsPlugin.loadRewardedVideo();

    // if(Platform.isAndroid) {
    //   vungleAdsPlugin.initialize(appId: '6018ef9e7428c3216e4505f0');
    // }
  }

  void showInterstitial({required bool random}) {
    if (!random) {
      var randomNumber = Random().nextInt(10);
      if (randomNumber < 5) {
        if (Random().nextBool()) {
          unityAdsPlugin.showRewardedVideo(adUnitId: 'rewardedVideo');
        } else {
          unityAdsPlugin.showInterstitial(adUnitId: 'video');
        }
      } else if (randomNumber < 10) {
        if (Random().nextBool()) {
          ironSourceAdsPlugin.showRewardedVideo();
        } else {
          ironSourceAdsPlugin.showInterstitial();
        }
      } else {
        // if (Random().nextBool()) {
        //   vungleAdsPlugin.showInterstitial();
        // } else {
        //   vungleAdsPlugin.showRewarded();
        // }
      }
    } else {
      if (Random().nextInt(10) < 5) {
        var randomNumber = Random().nextInt(10);
        if (randomNumber < 3) {
          if (Random().nextBool()) {
            unityAdsPlugin.showRewardedVideo(adUnitId: 'rewardedVideo');
          } else {
            unityAdsPlugin.showInterstitial(adUnitId: 'video');
          }
        } else if (randomNumber < 6) {
          if (Random().nextBool()) {
            ironSourceAdsPlugin.showRewardedVideo();
          } else {
            ironSourceAdsPlugin.showInterstitial();
          }
        } else {
          // if (Random().nextBool()) {
          //   vungleAdsPlugin.showInterstitial();
          // } else {
          //   vungleAdsPlugin.showRewarded();
          // }
        }
      }
    }
  }

  Widget showBanner({required Function onLoad}) {
    var randomNumber = Random().nextInt(10);
    if(randomNumber < 5 || Platform.isIOS) {
      return UnityAdsBanner(
        placementId: 'banner',
        onLoad: (placementId) {
          onLoad();
        },
      );
    } else if(randomNumber < 10) {
      return IronSourceBannerAd(
        size: IronSourceBannerSize.BANNER,
        keepAlive: true,
        listener: BannerIronSourceListener(onLoad: () {
          onLoad();
        }),
      );
    } else {
      return VungleBanner(
        placementId: 'BANNER-3176940',
        onLoad: (placementId) {
          onLoad();
        },
      );
    }
  }
}
