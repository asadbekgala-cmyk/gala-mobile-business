import 'package:gala_business/core/network/dio_handler.dart';
import 'package:gala_business/core/services/shared_preference_manager.dart';

import 'package:get_it/get_it.dart';

import 'package:shared_preferences/shared_preferences.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> setupServiceLocator() async {
  await SharedPreferenceManager.getInstance();

  serviceLocator.registerSingletonAsync(
    () async => await SharedPreferences.getInstance(),
  );
  serviceLocator.registerLazySingleton(() => DioSettings());

  // serviceLocator.registerLazySingleton(
  //   () => CheckoutDataSourceImpl(serviceLocator<DioSettings>().dio()),
  // );
  // serviceLocator.registerLazySingleton(
  //   () => CheckoutRepositoryImpl(
  //     checkoutDataSource: serviceLocator<CheckoutDataSourceImpl>(),
  //   ),
  // );
}
