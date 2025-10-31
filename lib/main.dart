import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gala_business/core/config/app_constants.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/routing/app_routing/route.dart';
import 'package:gala_business/core/services/service_locator.dart';
import 'package:gala_business/features/catalog/presentation/bloc/catalog_bloc.dart';
import 'package:gala_business/generated/codegen_loader.g.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();

  final shared = await SharedPreferences.getInstance();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('uz'), Locale('ru')],
      path: 'assets/translations',
      fallbackLocale: Locale(
        shared.getString(AppSharedKeys().language) ?? "uz",
      ),
      startLocale: Locale(shared.getString(AppSharedKeys().language) ?? "uz"),
      assetLoader: const CodegenLoader(),
      child: const MainApp(),
    ),
  );
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final GlobalKey _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: [GestureType.onTap],
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => CatalogBloc())],
        child: MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: MaterialApp.router(
            key: _navigatorKey,
            debugShowCheckedModeBanner: false,
            title: "gala",
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            themeMode: ThemeMode.dark,
            theme: context.theme.darkTheme(),
            routerConfig: AppRouter.router,
          ),
        ),
      ),
    );
  }
}
