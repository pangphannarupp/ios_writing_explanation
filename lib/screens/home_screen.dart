import 'dart:math';
import 'package:flutter/material.dart';
import 'package:writing_explanation/models/database.dart';
import 'package:writing_explanation/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isAvailable = false;
  /*
  * Variables
  * Native Ads and Native Banner Ads Of Facebook
  */
  double marginBottomContent = 0;

  List<Database> databaseList = <Database>[];
  late Database database;
  /*
  * Function
  * {Param} String: nextPage
  * Get Items from YouTube PlayList
  * Set Token To nextToken
  * Set Items to PlayList Model and List of PlayList
  * Hide Loading PopUp when Items are retrieved ready
  */
  Future<void> getDatabase() async {
    setState(() {
      for (int i = 0; i < data.length; i++) {
        database = Database(
          id: int.parse(data[i]['id'].toString()),
          title: data[i]['title'].toString(),
          image: data[i]['face'].toString(),
          pages: data[i]['pages'] as List<String>
        );
        databaseList.add(database);
      }
    });
  }

  @override
  void initState() {
    getDatabase();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        databaseList.isNotEmpty
            ? ListView.builder(
          itemCount: databaseList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 800),
                          pageBuilder: (_, __, ___) => DetailScreen(
                              database: databaseList[index])),
                    );
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        databaseList[index].getImage()),
                  ),
                  title: Text(databaseList[index].getTitle()),
                  trailing: const Icon(Icons.navigate_next),
                ),
                const Divider(),
              ],
            );
          },
        )
            : const Center(
          child: CircularProgressIndicator(),
        )
        // bannerAds()
        // bannerPPAds()
      ],
    );
  }
}

