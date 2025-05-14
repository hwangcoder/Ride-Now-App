import 'package:flutter/material.dart';
import 'package:ride_now/components/app_bar.dart';
import 'package:ride_now/components/text_field_password.dart';
import 'package:ride_now/pages/forgot_pass/forgot_pass.dart';
import 'package:ride_now/screens/auth/register_active_screen.dart';

import '../../components/elevated_button.dart';
import '../../components/text_field.dart';

class LoginDriverScreen extends StatefulWidget {
  const LoginDriverScreen({super.key});

  @override
  State<LoginDriverScreen> createState() => _LoginDriverScreenState();
}

class _LoginDriverScreenState extends State<LoginDriverScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F7FA),
        appBar: const CustomAppBar(
          title: 'Đăng ký',
          subtitle: 'Cùng RideNow kiếm thu nhập nhé!',
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  // height: 252,
                  // width: 358,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Đăng nhập Tài xế',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xFF2BC1BB),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Row(
                          children: [
                            Text('Số điện thoại ',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  // color: Color(0xFF2BC1BB),
                                )),
                            Text('*',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.red,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        CustomTextField(
                          controller: _phoneController,
                          hintText: 'Vui lòng nhập',
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.phone,                 
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Row(
                          children: [
                            Text('Mật khẩu ',
                                style: TextStyle(
                                  fontSize: 15.0,
                                )),
                            Text('*',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.red,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        CustomTextFieldPassword(
                          controller: _passwordController,
                          hintText: 'Vui lòng nhập',
                          textInputAction: TextInputAction.done,
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ForgotPass(),
                                ));
                          },
                          child: const Text("Quên mật khẩu?",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 143,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: CustomElevatedButton(
                        text: 'Đăng nhập',
                        color: const Color(0xFF2BC1BB),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegisterActiveScreen(),
                              ));
                        },
                        textColor: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Bạn chưa có tài khoản? ',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Text(
                            'Đăng ký ngay!',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                            ),
                          ),
                        ),
                     
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

