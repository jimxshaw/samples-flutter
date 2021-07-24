import 'package:get_it/get_it.dart';
import 'package:provider_architecture/core/viewmodels/login_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => LoginModel());
}
