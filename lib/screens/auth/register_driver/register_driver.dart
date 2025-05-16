import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ride_now/screens/auth/register_partner/register_partner.dart';
import 'package:ride_now/components/app_bar/app_bar.dart';
import 'package:ride_now/components/text_field/text_field.dart';

import '../../../components/button/elevated_button.dart';
import '../../../components/text_field/text_field_password.dart';
import '../../../components/drop_down_button.dart';

class RegisterDriver extends StatefulWidget {
  const RegisterDriver({super.key});

  @override
  State<RegisterDriver> createState() => _RegisterDriverState();
}

class _RegisterDriverState extends State<RegisterDriver> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _licensePlateController = TextEditingController();
  bool isPasswordVisible = false;
  List<String> loaixe = [
    'Xe 4 chỗ',
    'Xe 7 chỗ',
  ];
  List<String> hangxe = [
    'Hyundai',
    'Toyota',
    'Honda',
  ];
  List<String> mauxe = [
    'Trắng',
    'Đen',
    'Đỏ',
  ];
  String? selectedVehicleType = 'Xe 4 chỗ';
  String? selectedVehicleBrand = 'Hyundai';
  String? selectedVehicleColor = 'Trắng';
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
                            children: [
                              Expanded(
                                child: CustomDropdownButton(
                                  label: 'Loại xe',
                                  value: selectedVehicleType,
                                  items: loaixe,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedVehicleType = newValue;
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 16.0,
                              ),
                              Expanded(
                                child: CustomDropdownButton(
                                  label: 'Hãng xe',
                                  value: selectedVehicleBrand,
                                  items: hangxe,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedVehicleBrand = newValue;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text('Biển số xe ',
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
                                    const SizedBox(height: 8.0),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                            color: Colors.grey.shade300),
                                      ),
                                      child: TextFormField(
                                        controller: _licensePlateController,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 16.0,
                              ),
                              Expanded(
                                child: CustomDropdownButton(
                                  label: 'Màu xe',
                                  value: selectedVehicleColor,
                                  items: mauxe,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedVehicleColor = newValue;
                                    });
                                  },
                                ),
                              ),
                            ],
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
                              builder: (context) => const RegisterPartner(),
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
