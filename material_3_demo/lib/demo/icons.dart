import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

import 'form_header.dart';

enum AIcons {
  eyeSlash,
  eyeSlashBold,

  eyeBold,

  lock1Bold,

  sms1Bold,

  googleBold,
  facebookBold,
  appleBold,
}

class AppIcon extends StatelessWidget {
  const AppIcon(this.icon, {super.key, this.size});

  final AIcons icon;
  final double? size;

  Widget get child {
    return switch (icon) {
      AIcons.eyeSlash => Icon(IconsaxOutline.eye_slash, size: size),
      AIcons.eyeSlashBold => Icon(IconsaxBold.eye_slash, size: size),
      //
      AIcons.eyeBold => Icon(IconsaxBold.eye, size: size),
      //
      AIcons.lock1Bold => Icon(IconsaxBold.lock_1, size: size),
      //
      AIcons.sms1Bold => Icon(IconsaxBold.sms, size: size),
      //
      AIcons.googleBold => Icon(MingCuteIcons.mgc_google_fill, size: size),
      AIcons.facebookBold => Icon(MingCuteIcons.mgc_facebook_fill, size: size),
      AIcons.appleBold => Icon(MingCuteIcons.mgc_apple_fill, size: size),
    };
  }

  @override
  Widget build(BuildContext context) => child;
}

class Element extends StatelessWidget {
  const Element({super.key, required this.icon});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: () {},
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        iconSize: 20,
        elevation: 2,
      ),
      icon: icon,
    );
  }
}

class IconsList extends StatelessWidget {
  const IconsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      FormHeader(title: const Text('Icons')),
      const SizedBox(height: 12),
      Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 4),
        child: Wrap(spacing: 16, runSpacing: 16, children: [
          for (var element in AIcons.values) Element(icon: AppIcon(element)),
        ]),
      ),
    ]);
  }
}
