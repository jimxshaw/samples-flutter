import 'dart:async';

import 'package:provider_architecture/core/models/user.dart';
import 'package:provider_architecture/locator.dart';

import 'api.dart';

class AuthenticationService {
  // Inject the api.
  Api _api = locator<Api>();

  //StreamController<User> userController = StreamController<User>();

  Future<bool> login(int userId) async {
    // Get the user profile with id.
    var fetchedUser = await _api.getUserProfile(userId);

    // Check if successful.
    var hasUser = fetchedUser != null;

    // if (hasUser) {
    //   userController.add(fetchedUser);
    // }

    return hasUser;
  }
}
