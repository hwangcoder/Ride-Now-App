import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ride_now/components/app_bar.dart';
import 'package:ride_now/components/text_field.dart';

import '../components/elevated_button.dart';
import '../components/text_field_password.dart';
import 'widgets/drop_down_button.dart';

class RegisterDriver extends StatefulWidget {
  const RegisterDriver({super.key});

  @override
  State<RegisterDriver> createState() => _RegisterDriverState();
}

class _RegisterDriverState extends State<RegisterDriver> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isPasswordVisible = false;
  List<String> vehicleTypes = [
    'Xe máy',
    'Ô tô',
  ];
  String? selectedVehicleType = 'Xe máy';
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
                height: 537,
                width: 358,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Đăng ký Tài xế',
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
                          Text('Tên Tài Xế ',
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
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const Row(
                        children: [
                          Text('Mật khẩu ',
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
                      CustomTextFieldPassword(
                        controller: _passwordController,
                        hintText: 'Vui lòng nhập',
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [],
                          ),
                        ],
                      )
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
                              builder: (context) => const RegisterDriver(),
                            ));
                      },
                      textColor: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Bạn đã có tài khoản?',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
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
