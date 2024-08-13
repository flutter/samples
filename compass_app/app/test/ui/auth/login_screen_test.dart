import 'package:compass_app/data/components/auth/auth_login_component.dart';
import 'package:compass_app/data/repositories/auth/auth_token_repository_dev.dart';
import 'package:compass_app/ui/auth/login/view_models/login_viewmodel.dart';
import 'package:compass_app/ui/auth/login/widgets/login_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../../testing/app.dart';
import '../../../testing/fakes/services/fake_api_client.dart';
import '../../../testing/mocks.dart';

void main() {
  group('LoginScreen test', () {
    late LoginViewModel viewModel;
    late MockGoRouter goRouter;

    setUp(() {
      viewModel = LoginViewModel(
        authLoginComponent: AuthLoginComponent(
          authTokenRepository: AuthTokenRepositoryDev(),
          apiClient: FakeApiClient(),
        ),
      );
      goRouter = MockGoRouter();
    });

    Future<void> loadScreen(WidgetTester tester) async {
      await testApp(
        tester,
        LoginScreen(viewModel: viewModel),
        goRouter: goRouter,
      );
    }

    testWidgets('should load screen', (WidgetTester tester) async {
      await mockNetworkImages(() async {
        await loadScreen(tester);
        expect(find.byType(LoginScreen), findsOneWidget);
      });
    });
  });
}
