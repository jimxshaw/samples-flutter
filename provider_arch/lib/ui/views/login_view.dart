import 'package:flutter/material.dart';
import 'package:provider_architecture/core/viewmodels/login_model.dart';
import 'package:provider_architecture/core/viewmodels/viewstate.dart';
import 'package:provider_architecture/ui/shared/app_colors.dart';
import 'package:provider_architecture/ui/views/base_view.dart';
import 'package:provider_architecture/ui/widgets/login_header.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginHeader(
              validationMessage: model.errorMessage,
              controller: controller,
            ),
            model.state == ViewState.Busy
                ? CircularProgressIndicator()
                : TextButton(
                    style: TextButton.styleFrom(primary: Colors.white),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () async {
                      var loginSuccess = await model.login(controller.text);

                      if (loginSuccess) {
                        // Navigate to the home view.
                        Navigator.pushNamed(context, '/');
                      }
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
