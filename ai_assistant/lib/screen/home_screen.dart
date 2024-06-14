import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/helper/preference.dart';
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

    return const Scaffold(
      body: Center(
        child: Text('Welcome to Home Screen'),
      ),
    );
  }
}
