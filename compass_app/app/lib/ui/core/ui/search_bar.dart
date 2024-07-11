import 'package:flutter/material.dart';

import '../themes/colors.dart';
import '../themes/text_styles.dart';
import 'home_button.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    this.query,
  });

  final String? query;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 64,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey1),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: query != null
                    ? _QueryText(query: query!)
                    : const _EmptySearch(),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const HomeButton(),
      ],
    );
  }
}

class _QueryText extends StatelessWidget {
  const _QueryText({
    required this.query,
  });

  final String query;

  @override
  Widget build(BuildContext context) {
    return Text(
      query,
      textAlign: TextAlign.center,
      style: TextStyles.text,
    );
  }
}

class _EmptySearch extends StatelessWidget {
  const _EmptySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.search),
        SizedBox(width: 12),
        Expanded(
          child: Text(
            'Search destination',
            textAlign: TextAlign.start,
            style: TextStyles.hint,
          ),
        ),
      ],
    );
  }
}
