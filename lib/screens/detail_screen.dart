import 'package:flutter/material.dart';
import 'package:writing_explanation/ad/ad_manager.dart';
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
    AdManager().showInterstitial(random: true);

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
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
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
          AdManager().showBanner(onLoad: () {})
        ],
      ),
    );
  }
}
