import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_framework/flutter_framework.dart';
import 'package:flutter_framework/packages/ad/ad_manager.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
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
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.Debug.setAlertLevel(OSLogLevel.none);

    // CHANGE THIS parameter to true if you want to test GDPR privacy consent
    bool requireConsent = false;
    OneSignal.consentRequired(requireConsent);
    OneSignal.initialize(Platform.isAndroid
        ? "84ef587a-9d42-4714-98a1-785fb309dccc"
        : "0099699f-58f8-4aff-892a-75ebfa47a614");

    OneSignal.LiveActivities.setupDefault();
    OneSignal.Notifications.clearAll();

    OneSignal.User.pushSubscription.addObserver((state) {
      print(OneSignal.User.pushSubscription.optedIn);
      print(OneSignal.User.pushSubscription.id);
      print(OneSignal.User.pushSubscription.token);
      print(state.current.jsonRepresentation());
    });

    OneSignal.User.addObserver((state) {
      var userState = state.jsonRepresentation();
      print('OneSignal user changed: $userState');
    });

    OneSignal.Notifications.addPermissionObserver((state) {
      print("Has permission " + state.toString());
    });

    OneSignal.Notifications.addClickListener((event) {
      print('NOTIFICATION CLICK LISTENER CALLED WITH EVENT: $event');
      print("Clicked notification: \n${event.notification.jsonRepresentation().replaceAll("\\n", "\n")}");
    });

    OneSignal.Notifications.addForegroundWillDisplayListener((event) {
      print(
          'NOTIFICATION WILL DISPLAY LISTENER CALLED WITH: ${event.notification.jsonRepresentation()}');

      /// Display Notification, preventDefault to not display
      event.preventDefault();

      /// Do async work

      /// notification.display() to display after preventing default
      event.notification.display();

      print("Notification received in foreground notification: \n${event.notification.jsonRepresentation().replaceAll("\\n", "\n")}");
    });

    OneSignal.InAppMessages.addClickListener((event) {
      print("In App Message Clicked: \n${event.result.jsonRepresentation().replaceAll("\\n", "\n")}");
    });
    OneSignal.InAppMessages.addWillDisplayListener((event) {
      print("ON WILL DISPLAY IN APP MESSAGE ${event.message.messageId}");
    });
    OneSignal.InAppMessages.addDidDisplayListener((event) {
      print("ON DID DISPLAY IN APP MESSAGE ${event.message.messageId}");
    });
    OneSignal.InAppMessages.addWillDismissListener((event) {
      print("ON WILL DISMISS IN APP MESSAGE ${event.message.messageId}");
    });
    OneSignal.InAppMessages.addDidDismissListener((event) {
      print("ON DID DISMISS IN APP MESSAGE ${event.message.messageId}");
    });
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
