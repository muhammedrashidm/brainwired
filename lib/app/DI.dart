import 'package:brainwired/data/core/DioManager.dart';
import 'package:brainwired/data/users/repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpDep() async {
  getIt.registerLazySingleton(() => DioManager());
  getIt.registerLazySingleton(() => UserRepository(getIt<DioManager>()));
}
