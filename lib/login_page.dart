import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plants_care/widgets/login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Let\'s Sign you in!',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5),
                ),
              ),
              Lottie.asset(
                'images/login_lottie.json',
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),
              LoginScreen()
            ],
          ),
        ),
      ),
    );
  }
}
