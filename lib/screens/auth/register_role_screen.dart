import 'package:flutter/material.dart';
import 'package:ride_now/screens/auth/register_driver/register_driver.dart';
import 'package:ride_now/components/app_bar/app_bar.dart';
import 'package:ride_now/components/button/elevated_button.dart';
import 'package:ride_now/screens/auth/register_partner/register_partner.dart';

import '../../components/role_card.dart';

class RegisterRoleScreen extends StatefulWidget {
  const RegisterRoleScreen({super.key});

  @override
  State<RegisterRoleScreen> createState() => _RegisterRoleScreenState();
}

class _RegisterRoleScreenState extends State<RegisterRoleScreen> {
  void _navigateBasedOnRole() {
    final selectedRole = roleCardList.firstWhere((role) => role.isSelected);
    if (selectedRole.title == 'Đối tác đặt xe') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegisterPartner(),
        ),
      );
    } else if (selectedRole.title == 'Tài xế') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegisterDriver(),
        ),
      );
    }
  }

  final List<RoleCardModel> roleCardList = [
    RoleCardModel(
      title: 'Đối tác đặt xe',
      imagePath: 'assets/images/user.png',
      isSelected: true,
    ),
    RoleCardModel(
      title: 'Tài xế',
      imagePath: 'assets/images/driver.png',
      isSelected: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: const CustomAppBar(
        title: 'Đăng Ký',
        subtitle: 'Cùng RideNow kiếm thu nhập nhé!',
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Bạn là?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: roleCardList.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemBuilder: (context, index) {
                      final role = roleCardList[index];
                      return RoleCard(
                        title: role.title,
                        imagePath: role.imagePath,
                        isSelected: role.isSelected,
                        onTap: () {
                          setState(() {
                            for (var element in roleCardList) {
                              element.isSelected = false;
                            }
                            role.isSelected = true;
                          });
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 104,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.center,
                child: CustomElevatedButton(
                  text: 'Tiếp tục',
                  color: const Color(0xFF2BC1BB),
                  onPressed: () {
                    _navigateBasedOnRole();
                  },
                  textColor: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
