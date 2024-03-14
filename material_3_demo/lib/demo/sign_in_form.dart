import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpLink extends Wrap {
  const SignUpLink({super.key});

  @override
  List<Widget> get children {
    return [
      const Text('''Don't have an account? '''),
      LinkText('''Sign up''', onLinkTap: (url) {})
    ];
  }
}

class ForgotPasswordLink extends StatelessWidget {
  const ForgotPasswordLink({super.key});

  @override
  Widget build(BuildContext context) {
    return LinkText('''Forgot Password''', onLinkTap: (url) {});
  }
}

class VisibilityIconButton extends IconButton {
  const VisibilityIconButton({
    super.key,
    super.onPressed,
    required bool visibility,
  }) : super(
          icon: !visibility
              ? const Icon(Iconsax.eye_slash)
              : const Icon(Iconsax.eye4),
        );

  // const VisibilityIconButton({
  //   super.key,
  //   super.onPressed,
  //   required bool visibility,
  // }) : super(
  //         icon: visibility
  //             ? const Icon(MingCuteIcons.mgc_eye_close_fill)
  //             : const Icon(MingCuteIcons.mgc_eye_2_fill),
  //       );

  // const VisibilityIconButton({
  //   super.key,
  //   super.onPressed,
  //   required bool visibility,
  // }) : super(
  //         icon: visibility
  //             ? const Icon(Icons.visibility_off_rounded)
  //             : const Icon(Icons.visibility_rounded),
  //       );
}

class RememberCheckbox extends StatefulWidget {
  const RememberCheckbox({super.key});

  @override
  State<RememberCheckbox> createState() => _RememberCheckboxState();
}

class _RememberCheckboxState extends State<RememberCheckbox> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        value: _value,
        onChanged: (value) => setState(() => _value = value),
      ),
      const SizedBox(width: 4),
      const Text('Remember me'),
    ]);
  }
}

/// Easy to use text widget, which converts inlined urls into clickable links.
/// Allows custom styling.
class LinkText extends StatefulWidget {
  /// Text, which may contain inlined urls.
  final String text;

  /// Style of the non-url part of supplied text.
  final TextStyle? textStyle;

  /// Style of the url part of supplied text.
  final TextStyle? linkStyle;

  /// Determines how the text is aligned.
  final TextAlign textAlign;

  /// If true, this will cut off all visible params after '?'.
  /// This is only for improved readability. When executing the url
  /// the link with all params will stay the same.
  final bool shouldTrimParams;

  /// Overrides default behavior when tapping on links.
  /// Provides the url that was tapped.
  final void Function(String url)? onLinkTap;

  /// Creates a [LinkText] widget, used for inlined urls.
  const LinkText(
    this.text, {
    super.key,
    this.textStyle,
    this.linkStyle,
    this.textAlign = TextAlign.start,
    this.shouldTrimParams = false,
    this.onLinkTap,
  });

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  final _gestureRecognizers = <TapGestureRecognizer>[];
  final _regex = RegExp(
      r"https?:\/\/(www\.)?[-a-zA-Z0-9@:%.,_\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\,+.~#?&//=]*)");
  final _shortenedRegex = RegExp(r"(.*)\?");

  @override
  void dispose() {
    for (var recognizer in _gestureRecognizers) {
      recognizer.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    // final textStyle = widget.textStyle ?? themeData.textTheme.bodyMedium;
    final textStyle = widget.textStyle ??
        themeData.textTheme.labelLarge?.copyWith(
          // color: themeData.colorScheme.primary,
          fontWeight: FontWeight.w600,
        );
    final linkStyle = widget.linkStyle ??
        themeData.textTheme.bodyMedium?.copyWith(
          color: themeData.colorScheme.secondary,
          decoration: TextDecoration.underline,
        );

    final links = _regex.allMatches(widget.text);

    if (links.isEmpty) {
      return Text(widget.text, style: textStyle, textAlign: widget.textAlign);
    }

    final textParts = widget.text.split(_regex);
    final textSpans = <TextSpan>[];

    int i = 0;
    for (var part in textParts) {
      textSpans.add(TextSpan(text: part, style: textStyle));

      if (i < links.length) {
        final link = links.elementAt(i).group(0) ?? '';
        String? shortenedLink;

        final recognizer = TapGestureRecognizer()
          ..onTap = () => widget.onLinkTap?.call(link);

        if (widget.shouldTrimParams) {
          shortenedLink = _shortenedRegex.firstMatch(link)?.group(1);
        }

        _gestureRecognizers.add(recognizer);
        textSpans.add(
          TextSpan(
            text: shortenedLink ?? link,
            style: linkStyle,
            recognizer: recognizer,
          ),
        );

        i++;
      }
    }

    return Text.rich(
      TextSpan(children: textSpans),
      textAlign: widget.textAlign,
    );
  }
}

class StartPadding extends Padding {
  const StartPadding({
    super.key,
    super.child,
    super.padding = const EdgeInsetsDirectional.only(start: 6),
  });
}

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  // final minimumSize = const Size.fromHeight(50);
  // final border = OutlineInputBorder(borderRadius: BorderRadius.circular(12));
  // final enabledBorder = border.copyWith(
  //     borderSide: const BorderSide(color: Colors.transparent));

  static const colDivider = SizedBox(height: 12);
  static const minimumSize = Size.fromHeight(50);
  static final style = FilledButton.styleFrom(
    minimumSize: minimumSize,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SignInHeader(),
      colDivider,
      const StartPadding(child: MailInput()),
      colDivider,
      const StartPadding(child: PasswordInput()),
      colDivider,
      const Row(children: [RememberCheckbox(), Spacer(), ForgotPasswordLink()]),
      colDivider,
      colDivider,
      StartPadding(
        child: FilledButton(
          onPressed: () {},
          style: style,
          child: const Text('Sign In'),
        ),
      ),
      colDivider,
      colDivider,
      const SignUpLink(),
    ]);
  }
}

class SignInHeader extends AppBar {
  SignInHeader({super.key});

  @override
  Widget? get title => const Text('Sign In');

  @override
  double? get titleSpacing => 6;

  @override
  bool? get centerTitle => false;

  @override
  List<Widget>? get actions => [const SizedBox.shrink()];

  @override
  Color? get backgroundColor => Colors.transparent;
}

class MailInput extends StatelessWidget {
  const MailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 2),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        prefixIcon: const Icon(Iconsax.sms5, size: 20),
        hintText: 'Email Address',
      ),
    );
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _visibility = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 2),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        hintText: 'Password',
        errorText: 'Wrong Password',
        prefixIcon: const Icon(Iconsax.lock_15, size: 20),
        suffixIcon: VisibilityIconButton(
          onPressed: () => setState(() => _visibility = !_visibility),
          visibility: _visibility,
        ),
      ),
      obscureText: _visibility,
    );
  }
}

final border = OutlineInputBorder(borderRadius: BorderRadius.circular(12));
final decoration = InputDecoration(
  filled: true,
  contentPadding: const EdgeInsets.symmetric(vertical: 2),
  border: border,
);
