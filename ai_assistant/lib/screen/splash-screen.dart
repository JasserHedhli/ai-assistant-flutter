import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/helper/preference.dart';
import 'package:ai_assistant/screen/home_screen.dart';
import 'package:ai_assistant/screen/onboarding_screen.dart';
import 'package:ai_assistant/widget/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Await for some time on splash & then move to home screen
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => Preference.showOnboarding
          ? const OnboardScreen()
          : const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initialize device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            // Adding some space
            const Spacer(flex: 2),
            // Logo
            Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.all(mq.width * .05),
                  child: Image.asset('assets/images/logo.png',
                      width: mq.width * .4),
                )),
            const Spacer(),
            // Lottie animation
            const CustomLoading()
          ],
        ),
      ),
    );
  }
}
