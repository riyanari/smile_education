import 'dart:async';

import 'package:flutter/material.dart';

import '../components/half_circle_painter.dart';
import '../theme/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getInit();
    });
  }

  Future<void> getInit() async {
    await Future.delayed(const Duration(seconds: 3)); // Delay selama 3 detik
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 90,
            right: -50,
            child: CustomPaint(
              size: const Size(100, 100),
              painter: HalfCirclePainter(
                  color: const Color(
                      0x33B8FFD8)), // Gunakan painter yang telah Anda buat
            ),
          ),
          Positioned(
            top: -30,
            right: -75,
            child: CustomPaint(
              size: const Size(100, 100),
              painter: HalfCirclePainter(
                  color: const Color(
                      0x3396FFC6)), // Gunakan painter yang telah Anda buat
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo_unissula_login.png',
                        width: MediaQuery.of(context).size.width * 0.7,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'SMILE EDUCATION\n',
                              style: titleTextStyle.copyWith(fontSize: 36),
                            ),
                            TextSpan(
                              text: "learn menstruation while playing",
                              style: titleTextStyle.copyWith(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const CircularProgressIndicator(
                  strokeWidth: 5,
                  valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
                  backgroundColor: kBoxGreenColor,
                  semanticsLabel: 'Loading...',
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
