import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pay_jiggy/config/router/app_router.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/config/theme/light_theme.dart';
import 'package:pay_jiggy/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  appInitialization();
  runApp(const MyApp());
}

appInitialization() async {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await initializeDependencies();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          theme: lightTheme(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute: Routes.landing,
          onGenerateRoute: appRouter.onGenerateRoute,
        ));
  }
}
