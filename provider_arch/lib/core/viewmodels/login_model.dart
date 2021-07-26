import 'package:flutter/widgets.dart';

import 'package:flutter/foundation.dart';
import 'package:provider_architecture/core/services/authentication_service.dart';
import 'package:provider_architecture/locator.dart';

// Provides the state of the view.
enum ViewState { Idle, Busy }

class LoginModel extends ChangeNotifier {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
}
