// loading_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mrydev/Pages/web_view.dart';
import 'package:mrydev/Pages/mobile_view.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    // Start a timer to redirect to the appropriate view after 3 seconds.
    Future.delayed(const Duration(seconds: 3), () {
      double deviceWidth = MediaQuery.of(context).size.width;

      if (deviceWidth < 900) {
        // Redirect to the mobile view.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MobileView()),
        );
      } else {
        // Redirect to the web view.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const WebView()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffE8E8E8),
      body: Center(
        child: SpinKitPumpingHeart(
          color: Colors.redAccent,
          duration: Duration(seconds: 1),
          size: 128.0,
        ),
      ),
    );
  }
}
