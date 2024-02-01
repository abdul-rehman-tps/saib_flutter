import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saib_flutter/ui/widget/custom_input_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
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
              Positioned(child: Image.asset('assets/images/map_dots.png')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset('assets/images/line.png'),
                      Positioned(
                        left: Get.mediaQuery.size.width * 0.28,
                        child: Image.asset(
                          'assets/icons/ic_plane.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 72.0),
                    children: [
                      Image.asset('assets/images/logo_saib.png', width: 400),
                      const SizedBox(height: 16),
                      const CustomInputField(label: 'User Name'),
                      const SizedBox(height: 8),
                      const CustomInputField(
                        label: 'Password',
                        supportObscure: true,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
