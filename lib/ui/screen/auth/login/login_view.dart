import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saib_flutter/ui/screen/auth/login/login_controller.dart';
import 'package:saib_flutter/ui/widget/custom_button.dart';
import 'package:saib_flutter/ui/widget/custom_input_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController c = Get.put(LoginController());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_landing.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                width: Get.mediaQuery.size.width,
                child: Image.asset(
                  'assets/images/map_dots.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: Get.mediaQuery.size.height * 0.05,
                width: Get.mediaQuery.size.width,
                child: Image.asset('assets/images/line.png'),
              ),
              Positioned(
                left: Get.mediaQuery.size.width * 0.30,
                top: Get.mediaQuery.size.height * 0.055,
                child: Image.asset(
                  'assets/icons/ic_plane.png',
                  width: Get.mediaQuery.size.width * 0.15,
                  height: Get.mediaQuery.size.width * 0.15,
                ),
              ),
              ListView(
                children: [
                  SizedBox(height: Get.height * 0.23),
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.17),
                    children: [
                      Image.asset(
                        'assets/images/logo_saib.png',
                        width: Get.width * 0.6,
                      ),
                      const CustomInputField(label: 'User Name'),
                      const CustomInputField(
                        label: 'Password',
                        supportObscure: true,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(
                            () => Checkbox(
                              tristate: false,
                              value: c.isRememberMeChecked.value,
                              onChanged: (value) {
                                c.isRememberMeChecked.value = value!;
                              },
                            ),
                          ),
                          const Text('Remember Me')
                        ],
                      ),
                      CustomButton(
                        actionText: 'Login',
                        onTap: () async => c.onLoginTap(),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don\'t have an account?'),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/icons/ic_aboutus.png',
                          width: Get.width * 0.1,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset(
                          'assets/icons/ic_locator.png',
                          width: Get.width * 0.1,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset(
                          'assets/icons/ic_phone.png',
                          width: Get.width * 0.1,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
