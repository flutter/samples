// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:particle_field/particle_field.dart';
import 'package:rnd/rnd.dart';

class ParticleOverlay extends StatelessWidget {
  const ParticleOverlay({super.key, required this.color, required this.energy});

  final Color color;
  final double energy;

  @override
  Widget build(BuildContext context) {
    return ParticleField(
      spriteSheet: SpriteSheet(
        image: const AssetImage('assets/images/particle-wave.png'),
      ),
      // blend the image's alpha with the specified color:
      blendMode: BlendMode.dstIn,

      // this runs every tick:
      onTick: (controller, _, size) {
        List<Particle> particles = controller.particles;

        // add a new particle with random angle, distance & velocity:
        double a = rnd(pi * 2);
        double dist = rnd(1, 4) * 35 + 150 * energy;
        double vel = rnd(1, 2) * (1 + energy * 1.8);
        particles.add(Particle(
          // how many ticks this particle will live:
          lifespan: rnd(1, 2) * 20 + energy * 15,
          // starting distance from center:
          x: cos(a) * dist,
          y: sin(a) * dist,
          // starting velocity:
          vx: cos(a) * vel,
          vy: sin(a) * vel,
          // other starting values:
          rotation: a,
          scale: rnd(1, 2) * 0.6 + energy * 0.5,
        ));

        // update all of the particles:
        for (int i = particles.length - 1; i >= 0; i--) {
          Particle p = particles[i];
          if (p.lifespan <= 0) {
            // particle is expired, remove it:
            particles.removeAt(i);
            continue;
          }
          p.update(
            scale: p.scale * 1.025,
            vx: p.vx * 1.025,
            vy: p.vy * 1.025,
            color: color.withOpacity(p.lifespan * 0.001 + 0.01),
            lifespan: p.lifespan - 1,
          );
        }
      },
    );
  }
}
