import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constant/Containers/decorations.dart';
import '../../utils/constant/Containers/gradient.dart';

class ListOfMusicPlayer extends StatefulWidget {
  const ListOfMusicPlayer({super.key});

  @override
  State<ListOfMusicPlayer> createState() => _ListOfMusicPlayerState();
}

class _ListOfMusicPlayerState extends State<ListOfMusicPlayer> {
  @override
  Widget build(BuildContext context) {
    List songs = [
      "Ain't No Time",
      "In her mouth",
      "Low Life",
      "Xanny Family",
      "Lil haiti baby",
      "Photo copied",
      "Seven Rings",
    ];
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          gradient: customGradient,
        ),
        child: Column(
          children: [
            Text(
              "Evol - Future",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white.withOpacity(0.5),
                  ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  alignment: Alignment.center,
                  decoration: CustomDecorations().morphismDecoration,
                  child: FaIcon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.white.withOpacity(0.5),
                    size: 14,
                  ),
                ),
                Container(
                  decoration: CustomDecorations().morphismDecoration56.copyWith(
                        border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 21, 23, 26),
                        ),
                      ),
                  child: const CircleAvatar(
                    radius: 64,
                    backgroundImage: AssetImage(
                      'lib/src/utils/resources/images/musicplayer.png',
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  alignment: Alignment.center,
                  decoration: CustomDecorations().morphismDecoration,
                  child: FaIcon(
                    FontAwesomeIcons.ellipsis,
                    color: Colors.white.withOpacity(0.5),
                    size: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.all(5),
                    title: Text(
                      songs[index],
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                          ),
                    ),
                    subtitle: Text(
                      "Future ft.",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    trailing: Container(
                      width: 56,
                      height: 56,
                      alignment: Alignment.center,
                      decoration: CustomDecorations().morphismDecoration,
                      child: FaIcon(
                        FontAwesomeIcons.play,
                        color: Colors.white.withOpacity(0.5),
                        size: 14,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
