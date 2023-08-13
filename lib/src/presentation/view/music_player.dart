import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:musicplayer/src/utils/constant/Containers/decorations.dart';

import '../../utils/constant/Containers/gradient.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool isTaped = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          gradient: customGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: AnimatedContainer(
                    duration: 100.milliseconds,
                    transformAlignment: Alignment.bottomCenter,
                    height: 48,
                    width: 48,
                    alignment: Alignment.center,
                    decoration: CustomDecorations().morphismDecoration,
                    child: const FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                Text(
                  "Playing Now",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white.withOpacity(0.5),
                      ),
                ),
                GestureDetector(
                  onTapDown: (details) {
                    setState(() {
                      log("Tapb Down");
                      isTaped = true;
                    });
                  },
                  onTapUp: (details) {
                    setState(() {
                      log("Tapb Up");
                      isTaped = false;
                    });
                    Navigator.pushNamed(context, '/list_of_music');
                  },
                  child: AnimatedContainer(
                    duration: 100.milliseconds,
                    transformAlignment: Alignment.bottomCenter,
                    height: isTaped ? 47 : 48,
                    width: isTaped ? 47 : 48,
                    alignment: Alignment.center,
                    decoration: CustomDecorations().morphismDecoration,
                    child: const FaIcon(
                      FontAwesomeIcons.bars,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: CustomDecorations().morphismDecoration56,
              child: const CircleAvatar(
                radius: 156,
                backgroundImage: AssetImage(
                  'lib/src/utils/resources/images/musicplayer.png',
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Low Life",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                      ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Future ft. The Weekand",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white.withOpacity(0.5),
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "1:57",
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    const Spacer(),
                    Text(
                      "3:00",
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      height: 8,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          width: 50,
                          height: 8,
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Colors.orange,
                              Colors.deepOrange,
                            ]),
                            color: Colors.red,
                          ),
                          // child:
                        ),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 255, 174, 0),
                            border: Border.all(
                              width: 8,
                              color: const Color(0xFF2E343A),
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 84,
                  width: 84,
                  alignment: Alignment.center,
                  decoration: CustomDecorations().morphismDecoration64,
                  child: const FaIcon(
                    FontAwesomeIcons.backward,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 84,
                  width: 84,
                  alignment: Alignment.center,
                  decoration: CustomDecorations().morphismDecoration64.copyWith(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 255, 60, 0),
                            Color.fromARGB(255, 255, 94, 0),
                          ],
                        ),
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 123, 0),
                          width: 5,
                        ),
                      ),
                  child: const FaIcon(
                    FontAwesomeIcons.pause,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 84,
                  width: 84,
                  alignment: Alignment.center,
                  decoration: CustomDecorations().morphismDecoration64,
                  child: const FaIcon(
                    FontAwesomeIcons.forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
