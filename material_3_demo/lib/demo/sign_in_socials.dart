import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class SocialsSignIn extends StatelessWidget {
  const SocialsSignIn({super.key});

  @override
  Widget build(BuildContext context) => const _SocialsSignIn();

  // @override
  // Widget build(BuildContext context) {
  //   const minimumSize = Size.fromHeight(56);
  //   return OutlinedButtonTheme(
  //     data: OutlinedButtonThemeData(
  //       style: OutlinedButton.styleFrom(minimumSize: minimumSize),
  //     ),
  //     child: Row(children: [
  //       Flexible(
  //         child: OutlinedButton.icon(
  //           onPressed: () {},
  //           icon: const Icon(MingCuteIcons.mgc_google_fill),
  //           label: const Text('Google'),
  //         ),
  //         // child: OutlinedButton(onPressed: () {}, child: const Text('Google')),
  //       ),
  //       const SizedBox(width: 24),
  //       Flexible(
  //         child: OutlinedButton.icon(
  //           onPressed: () {},
  //           icon: const Icon(MingCuteIcons.mgc_apple_fill),
  //           label: const Text('Apple'),
  //         ),
  //       ),
  //       const SizedBox(width: 24),
  //       Flexible(
  //         child: OutlinedButton.icon(
  //           onPressed: () {},
  //           icon: const Icon(MingCuteIcons.mgc_facebook_fill),
  //           label: const Text(
  //             'Facebook',
  //             maxLines: 1,
  //           ),
  //         ),
  //       ),
  //     ]),
  //   );
  // }
}

class _SocialsSignIn extends StatelessWidget {
  const _SocialsSignIn();

  @override
  Widget build(BuildContext context) {
    return FilledButtonTheme(
      data: FilledButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: Wrap(runSpacing: 12, children: [
        FilledButton.tonalIcon(
          onPressed: () {},
          icon: const Icon(MingCuteIcons.mgc_apple_fill),
          label: const Text('Sign In With Apple'),
        ),
        const SizedBox(height: 24),
        FilledButton.tonalIcon(
          onPressed: () {},
          icon: const Icon(MingCuteIcons.mgc_facebook_fill),
          label: const Text('Sign In With Facebook', maxLines: 1),
        ),
        const SizedBox(height: 24),
        FilledButton.tonalIcon(
          onPressed: () {},
          icon: const Icon(MingCuteIcons.mgc_google_fill),
          label: const Text('Sign In With Google'),
        ),
      ]),
    );
  }
}
