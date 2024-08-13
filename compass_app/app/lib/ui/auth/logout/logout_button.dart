import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/components/auth/auth_logout_component.dart';
import '../../core/themes/colors.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      width: 40.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey1),
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.transparent,
        ),
        child: InkResponse(
          borderRadius: BorderRadius.circular(8.0),
          onTap: () {
            AuthLogoutComponent(
              authTokenRepository: context.read(),
              itineraryConfigRepository: context.read(),
            ).logout();
          },
          child: Center(
            child: Icon(
              size: 24.0,
              Icons.logout,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}
