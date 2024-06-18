import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_framework/packages/ad/ad_manager.dart';
import 'package:flutter_framework/plugins/views/startapp_banner.dart';
import 'package:writing_explanation/models/database.dart';

class DetailScreen extends StatefulWidget {
  final Database database;
  const DetailScreen({super.key, required this.database});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

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
        title: Text(
          widget.database.getTitle(),
          style: const TextStyle(
              color: Colors.white
          ),
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
              if(Random().nextBool()) {
                AdManager().showInterstitial(random: true);
              }
            }),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < widget.database.getPages().length; i++)
                      Image.asset(widget.database.getPages()[i])
                  ],
                ),
              ),
            ),
            // AdManager().showBanner(onLoad: () {})
            const StartAppBanner(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
