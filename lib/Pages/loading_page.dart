import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mrydev/Pages/home_page.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8E8E8),
      body: Center(
        child: FutureBuilder(
          future: Future.delayed(const Duration(seconds: 3)),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SpinKitPumpingHeart(
                color: Colors.redAccent,
                duration: Duration(seconds: 1),
                size: 128.0,
              );
            } else {
              return const MyHomePage();
            }
          },
        ),
      ),
    );
  }
}
