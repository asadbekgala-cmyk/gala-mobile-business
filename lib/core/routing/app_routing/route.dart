// DO NOT DELETE THIS COMMENTED CODE
//::IMPORTS::
import 'dart:convert';

import 'package:gala_business/core/config/app_constants.dart';
import 'package:gala_business/core/routing/route_nemas/route_names.dart';
import 'package:gala_business/core/services/service_locator.dart';
import 'package:gala_business/features/buyurtmalar/order_screen.dart';
import 'package:gala_business/features/buyurtmalar/presentation/page/accsept_order.dart';
import 'package:gala_business/features/buyurtmalar/presentation/page/moderation.dart';
import 'package:gala_business/features/home/home_screen.dart';
import 'package:gala_business/features/home/presentation/pages/notification.dart';
import 'package:gala_business/features/instrument/detail_screen.dart';
import 'package:gala_business/features/catalog/catalog_screen.dart';
import 'package:gala_business/features/catalog/presentation/pages/add_info_create_product.dart';
import 'package:gala_business/features/catalog/presentation/pages/create_express.dart';
import 'package:gala_business/features/catalog/presentation/pages/create_product.dart';
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
                routes: [
                  GoRoute(
                    parentNavigatorKey: navigatorKey,
                    path: AppRouteName().createExpress,
                    name: AppRouteName().createExpress,
                    builder: (context, state) => CreateExpressScreen(),
                  ),
                  GoRoute(
                    parentNavigatorKey: navigatorKey,
                    path: AppRouteName().createOddiy,
                    name: AppRouteName().createOddiy,
                    builder: (context, state) => CreateProduct(),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: navigatorKey,
                        path: AppRouteName().addInfoCreateProduct,
                        name: AppRouteName().addInfoCreateProduct,
                        builder: (context, state) => AddInfoCreateProduct(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRouteName().orders,
                name: AppRouteName().orders,
                builder: (context, state) => OrderScreen(),
                routes: [
                  GoRoute(
                    parentNavigatorKey: navigatorKey,
                    path: AppRouteName().accseptOrder,
                    name: AppRouteName().accseptOrder,
                    builder: (context, state) => AccseptOrderScreen(),
                  ),
                   GoRoute(
                    parentNavigatorKey: navigatorKey,
                    path: AppRouteName().moderation,
                    name: AppRouteName().moderation,
                    builder: (context, state) => ModerationScreen(),
                  ),
                ],
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
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: "sss",
                name: "sss",
                builder: (context, state) => DetailScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
