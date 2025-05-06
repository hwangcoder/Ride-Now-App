import 'package:flutter/material.dart';
import 'package:ride_now/components/dialog.dart';

class RegisterActiveScreen extends StatefulWidget {
  const RegisterActiveScreen({super.key});

  @override
  State<RegisterActiveScreen> createState() => _RegisterActiveScreenState();
}

class _RegisterActiveScreenState extends State<RegisterActiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF2BC1BB), Color(0xFFC5FCFF)]),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 86.0, bottom: 104.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 122,
                  height: 104,
                ),
              ),
              CustomAlertDialog(
                  imagePath: 'assets/images/success.png',
                  title: 'Đăng ký thành công',
                  description:
                      'Bạn đã đăng ký tài khoản thành công. Cùng RideNow kiếm thêm thu nhập ngay!',
                  buttonText: 'Đến trang chủ',
                  onConfirm: () {})
            ],
          ),
        ),
      ),
    );
  }
}
