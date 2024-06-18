import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/helper/preference.dart';
import 'package:ai_assistant/model/home_type.dart';
import 'package:ai_assistant/widget/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Preference.showOnboarding = false;
  }

  @override
  Widget build(BuildContext context) {
    //init device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      //app bar
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(appName,
            style: TextStyle(
                color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w500)),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 10),
            onPressed: () {},
            icon: const Icon(Icons.brightness_4_rounded,
                color: Colors.blue, size: 26),
          )
        ],
      ),

      //body
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: mq.width * .04, vertical: mq.height * .015),
        children: HomeType.values.map((e) => HomeCard(homeType: e)).toList(),
      ),
    );
  }
}
