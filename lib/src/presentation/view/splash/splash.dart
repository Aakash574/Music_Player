import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:musicplayer/src/utils/constant/Containers/decorations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animateController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );

  @override
  void initState() {
    super.initState();
    Future.delayed(
      1.seconds,
      () => Navigator.pushNamedAndRemoveUntil(
        context,
        '/music_player',
        (route) => false,
      ),
    );
    log("After 3 Seconds");
    log("After 3 Seconds");
    log("After 3 Seconds");
    log("After 3 Seconds");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        decoration: CustomDecorations().morphismDecoration,
        child: FaIcon(
          FontAwesomeIcons.guitar,
          color: Colors.white.withOpacity(0.8),
          size: 26,
        ),
      )
          .animate(controller: _animateController, delay: 100.ms)
          .blurXY(begin: 10, end: 0, duration: 600.ms),
    );
  }
}
