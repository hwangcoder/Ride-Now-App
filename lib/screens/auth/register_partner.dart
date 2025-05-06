import 'package:flutter/material.dart';
import 'package:ride_now/components/app_bar.dart';
import 'package:ride_now/screens/auth/register_active_screen.dart';

import '../../components/elevated_button.dart';
import '../../components/text_field.dart';

class RegisterPartner extends StatefulWidget {
  const RegisterPartner({super.key});

  @override
  State<RegisterPartner> createState() => _RegisterPartnerState();
}

class _RegisterPartnerState extends State<RegisterPartner> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 252,
                width: 358,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Đăng ký Đối tác',
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
                          Text('Tên Đối Tác ',
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
                        controller: _nameController,
                        hintText: 'Vui lòng nhập',
                        textInputAction: TextInputAction.next,
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
                        textInputAction: TextInputAction.done,
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
                      text: 'Đăng ký',
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
                        'Bạn đã có tài khoản? ',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Text(
                          'Đăng nhập ngay!',
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
    );
  }
}
