import 'package:flutter/material.dart';
import 'package:provider_architecture/core/viewmodels/login_model.dart';
import 'package:provider_architecture/core/viewmodels/viewstate.dart';

// All Models work the same. There's a state property
// that tells what UI layout to show in the view and
// when it's updated then notifyListeners is called.
// Hence why all that logic is moved into this BaseModel.
class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;

    notifyListeners();
  }
}
