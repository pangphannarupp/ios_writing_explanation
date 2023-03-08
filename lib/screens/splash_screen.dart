import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_framework/flutter_framework.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:writing_explanation/ad/ad_manager.dart';
import 'package:writing_explanation/languages/language.dart';
import 'package:writing_explanation/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  final storagePlugin = StoragePlugin();
  final applicationPlugin = ApplicationPlugin();

  String appVersion = '1.0.0';

  /*
  * Function
  * Call Home Screen after 5 seconds
  */
  Future<void> delayCallMainScreen() async {
    await Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => const MainScreen()));
    });
  }

  /*
  * Function
  * Initialize OneSignal
  */
  Future<void> initializeOneSignal() async {
    OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

    // CHANGE THIS parameter to true if you want to test GDPR privacy consent
    // bool requireConsent = false;
    // OneSignal.shared.setRequiresUserPrivacyConsent(requireConsent);

    // OneSignal.shared
    //     .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
    //   print('NOTIFICATION OPENED HANDLER CALLED WITH: $result');
    //   print(
    //       "Opened notification: \n${result.notification.jsonRepresentation().replaceAll("\\n", "\n")}");
    // });

    // OneSignal.shared.setNotificationWillShowInForegroundHandler(
    //         (OSNotificationReceivedEvent event) {
    //       print('FOREGROUND HANDLER CALLED WITH: $event');
    //
    //       /// Display Notification, send null to not display
    //       event.complete(null);
    //
    //       print(
    //           "Notification received in foreground notification: \n${event.notification.jsonRepresentation().replaceAll("\\n", "\n")}");
    //     });

    // OneSignal.shared
    //     .setInAppMessageClickedHandler((OSInAppMessageAction action) {
    //   print(
    //       "In App Message Clicked: \n${action.jsonRepresentation().replaceAll("\\n", "\n")}");
    // });

    // OneSignal.shared
    //     .setSubscriptionObserver((OSSubscriptionStateChanges changes) {
    //   print("SUBSCRIPTION STATE CHANGED: ${changes.jsonRepresentation()}");
    // });



    // OneSignal.shared.setEmailSubscriptionObserver(
    //         (OSEmailSubscriptionStateChanges changes) {
    //       print("EMAIL SUBSCRIPTION STATE CHANGED ${changes.jsonRepresentation()}");
    //     });

    // OneSignal.shared
    //     .setSMSSubscriptionObserver((OSSMSSubscriptionStateChanges changes) {
    //   print("SMS SUBSCRIPTION STATE CHANGED ${changes.jsonRepresentation()}");
    // });

    // OneSignal.shared.setOnWillDisplayInAppMessageHandler((message) {
    //   print("ON WILL DISPLAY IN APP MESSAGE ${message.messageId}");
    // });

    // OneSignal.shared.setOnDidDisplayInAppMessageHandler((message) {
    //   print("ON DID DISPLAY IN APP MESSAGE ${message.messageId}");
    // });

    // OneSignal.shared.setOnWillDismissInAppMessageHandler((message) {
    //   print("ON WILL DISMISS IN APP MESSAGE ${message.messageId}");
    // });

    // OneSignal.shared.setOnDidDismissInAppMessageHandler((message) {
    //   print("ON DID DISMISS IN APP MESSAGE ${message.messageId}");
    // });

    OneSignal.shared.setAppId(Platform.isAndroid
        ? "84ef587a-9d42-4714-98a1-785fb309dccc"
        : "0099699f-58f8-4aff-892a-75ebfa47a614");
    OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {
      print("PERMISSION STATE CHANGED: ${changes.jsonRepresentation()}");
    });

    // iOS-only method to open launch URLs in Safari when set to false
    //OneSignal.shared.setLaunchURLsInApp(false);

    //bool requiresConsent = await OneSignal.shared.requiresUserPrivacyConsent();

    // this.setState(() {
    //   _enableConsentButton = requiresConsent;
    // });

    // Some examples of how to use In App Messaging public methods with OneSignal SDK
    // oneSignalInAppMessagingTriggerExamples();

    // OneSignal.shared.disablePush(false);

    // Some examples of how to use Outcome Events public methods with OneSignal SDK
    // oneSignalOutcomeEventsExamples();

    // bool userProvidedPrivacyConsent = await OneSignal.shared.userProvidedPrivacyConsent();
    // print("USER PROVIDED PRIVACY CONSENT: $userProvidedPrivacyConsent");
  }

  void getAppInfo() async {
    applicationPlugin.checkAppInfo(onSuccess: (response) {
      if (response['result']) {
        setState(() {
          appVersion = response['appVersion'];
        });
      }
    });
  }

  @override
  void initState() {

    AdManager().register();
    getAppInfo();

    initializeOneSignal();
    delayCallMainScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
        body: Stack(
          children: <Widget>[
            Center(
              child: Text(
                translate[language]!['app']!['name']!,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(16.0),
                child: Text(
                  '${translate[language]!['app']!['version']!} $appVersion',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
