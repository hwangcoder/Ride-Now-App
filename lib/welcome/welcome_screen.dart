import 'package:flutter/material.dart';

import '../auth/register_role_screen.dart';
import '../components/elevated_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF2BC1BB), Color(0xFFC5FCFF)]),
        ),
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  'assets/images/logo.png',
                  width: 195,
                  height: 166,
                ),
                const SizedBox(height: 20),
                const Text(
                  'RIDE NOW',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Spacer(),
                CustomElevatedButton(
                  onPressed: () {},
                  text: 'Đăng Nhập',
                  color: Colors.black,
                  textColor: Colors.white,
                  fontSize: 18,
                  borderColor: Colors.black,
                ),
                const SizedBox(height: 20),
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterRoleScreen(),
                        ));
                  },
                  text: 'Đăng ký',
                  color: Colors.white,
                  textColor: Colors.black,
                  fontSize: 18,
                  borderColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
