import 'package:flutter/material.dart';
import 'package:sa3_liquid/sa3_liquid.dart';

class PlasmaBackground extends StatelessWidget {
  const PlasmaBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          tileMode: TileMode.mirror,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xfff44336),
            Color(0xff2196f3),
          ],
          stops: [
            0,
            1,
          ],
        ),
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: const PlasmaRenderer(
        type: PlasmaType.bubbles,
        particles: 20,
        color: Color(0x44e45a23),
        blur: 0,
        size: 1.01,
        speed: 2.11,
        offset: 0.54,
        blendMode: BlendMode.plus,
        particleType: ParticleType.circle,
        variation1: 0.28,
        variation2: 0.14,
        variation3: 0,
        rotation: -0.33,
      ),
    );
  }
}
