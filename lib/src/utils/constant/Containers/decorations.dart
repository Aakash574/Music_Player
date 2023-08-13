import 'package:flutter/material.dart';
import 'package:musicplayer/src/utils/constant/Containers/gradient.dart';

class CustomDecorations {
  BoxDecoration morphismDecoration = BoxDecoration(
    shape: BoxShape.circle,
    gradient: customGradient45,
    boxShadow: const [
      BoxShadow(
        color: Color(0xFF1A1B1F),
        blurRadius: 5,
        offset: Offset(3, 3),
        spreadRadius: 2,
      ),
      BoxShadow(
        color: Color(0xFF373C42),
        blurRadius: 5,
        offset: Offset(-3, -3),
        spreadRadius: 2,
      ),
    ],
    border: Border.all(
      width: 3,
      color: const Color(0xFF33383E).withOpacity(0.5),
    ),
  );
  BoxDecoration morphismDecoration64 = BoxDecoration(
    shape: BoxShape.circle,
    gradient: customGradient45,
    boxShadow: const [
      BoxShadow(
        color: Color(0xFF171719),
        blurRadius: 10,
        offset: Offset(8, 8),
        // spreadRadius: 2,
      ),
      BoxShadow(
        color: Color(0xFF363A40),
        blurRadius: 10,
        offset: Offset(-8, -8),
        // spreadRadius: 1,
      ),
    ],
    border: Border.all(
      width: 5,
      color: const Color(0xFF171719).withOpacity(0.5),
    ),
  );
  BoxDecoration morphismDecoration56 = BoxDecoration(
    shape: BoxShape.circle,
    gradient: customGradient45,
    boxShadow: const [
      BoxShadow(
        color: Color(0xFF373C42),
        blurRadius: 16,
        offset: Offset(-14, -14),
        spreadRadius: 2,
      ),
      BoxShadow(
        color: Color(0xFF1A1B1F),
        blurRadius: 16,
        offset: Offset(12, 12),
        spreadRadius: 2,
      ),
    ],
    border: Border.all(
      width: 12,
      color: const Color.fromARGB(255, 29, 32, 36).withOpacity(0.5),
    ),
  );
}
