import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:login/config.dart';
import 'package:login/controller/auth_controller.dart';
import 'package:login/widgets/hero_title.dart';
import 'package:login/widgets/rounded_elevated_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: GetBuilder<AuthController>(
      builder: (_authController) {
        return Column(
          mainAxisAignment: MainAxisAlignment.start,
          children: [
            HeroTitle(
                title:
                    'Hello ${_authController.displayName.toString().capitalizeString()}!',
                subtitle: 'Let\'s get it'),
            Expanded(flex: 8, child: Container()),
            RoundedElevatedButton(
              title: 'Sign out',
              onPressed: () => _authController.signout(),
              padding:
                  EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.2),
            ),
          ],
        );
      },
    ));
  }
}
