import 'package:flutter/widgets.dart';

import 'package:flutter/foundation.dart';
import 'package:provider_architecture/core/services/authentication_service.dart';
import 'package:provider_architecture/core/viewmodels/base_model.dart';
import 'package:provider_architecture/core/viewmodels/viewstate.dart';
import 'package:provider_architecture/locator.dart';

class LoginModel extends BaseModel {
  String errorMessage;

  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;

    notifyListeners();
  }

  Future<bool> login(String userIdText) async {
    setState(ViewState.Busy);

    var userId = int.tryParse(userIdText);

    if (userId == null) {
      errorMessage = 'Value entered is not a number';

      setState(ViewState.Idle);

      return false;
    }

    var success = await _authenticationService.login(userId);

    setState(ViewState.Idle);

    return success;
  }
}
