import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_framework/flutter_framework.dart';
import 'package:writing_explanation/ad/ad_manager.dart';
import 'package:writing_explanation/languages/language.dart';
import 'package:writing_explanation/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(translate[language]!['app']!['name']!),
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                title: Text(
                  translate[language]!['menu']!['home']!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  final sharePlugin = SharePlugin();
                  if (Platform.isIOS) {
                    sharePlugin.shareLink(
                        link:
                            'https://apps.apple.com/us/app/writing-explanation/id1458615232');
                  } else {
                    sharePlugin.shareLink(
                        link:
                        'https://appgallery.huawei.com/app/C103517655');
                  }
                },
                title: Text(
                  translate[language]!['menu']!['share']!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  final externalBrowserPlugin = ExternalBrowserPlugin();
                  if (Platform.isIOS) {
                    externalBrowserPlugin.open(
                        url:
                            'https://apps.apple.com/us/developer/phanna-pang/id1458265412');
                  } else {
                    externalBrowserPlugin.open(
                        url:
                        'https://appgallery.huawei.com/tab/appdetailCommon%7CC103338185%7Cautomore%7Cdoublecolumncardwithstar%7C903547');
                  }
                },
                title: Text(
                  translate[language]!['menu']!['more_app']!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(child: HomeScreen()),
            AdManager().showBanner(onLoad: () {})
          ],
        ),
      ),
    );
  }
}
