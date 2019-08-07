import 'package:get_it/get_it.dart';

import 'ApiService.dart';
import 'PrefService.dart';

GetIt sl = GetIt();

setupServiceLocator() {
  sl.registerLazySingleton<ApiService>(() => ApiService());
  sl.registerLazySingleton<PrefService>(() => PrefService());
}
