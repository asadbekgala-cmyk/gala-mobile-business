// DO NOT DELETE THIS COMMENTED CODE
//::IMPORTS::
import 'dart:convert';

import 'package:gala_business/core/config/app_constants.dart';
import 'package:gala_business/core/routing/route_nemas/route_names.dart';
import 'package:gala_business/core/services/service_locator.dart';
import 'package:gala_business/features/buyurtmalar/order_screen.dart';
import 'package:gala_business/features/home/home_screen.dart';
import 'package:gala_business/features/home/presentation/pages/notification.dart';
import 'package:gala_business/features/instrument/detail_screen.dart';
import 'package:gala_business/features/katalog/catalog_screen.dart';
import 'package:gala_business/features/navigation/navigation_screen.dart';
import 'package:gala_business/main.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferences = serviceLocator<SharedPreferences>();

class AppRouter {
  // DO NOT DELETE THIS COMMENTED CODE
  //::NAMES::
  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    redirect: (context, state) {
      if (state.uri.toString().contains("/nazr.uz/")) {
        final fullURLPath = state.uri.toString();

        final productId = fullURLPath.split("/").last;

        if (fullURLPath.contains("/product/")) {
          // if (AppConstants.isActive) return "/flowers/product?productId=$id";
          return "/splash/${jsonEncode({"productId": productId})}";
        }
        return AppRouteName().home;
      }
      return null;
    },
    initialLocation:
        sharedPreferences.getString(AppSharedKeys().accessToken) == null
        ? AppRouteName().home
        : AppRouteName().home,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return NavigationScreen(statefulNavigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRouteName().home,
                name: AppRouteName().home,
                builder: (context, state) => HomeScreen(),
                routes: [
                  GoRoute(
                    parentNavigatorKey: navigatorKey,
                    path: AppRouteName().notification,
                    name: AppRouteName().notification,
                    builder: (context, state) => NotificationScreen(),
                    routes: [ 
                  
                ]
              ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRouteName().catalog,
                name: AppRouteName().catalog,
                builder: (context, state) => CatalogScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRouteName().orders,
                name: AppRouteName().orders,
                builder: (context, state) => OrderScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRouteName().detail,
                name: AppRouteName().detail,
                builder: (context, state) => DetailScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
