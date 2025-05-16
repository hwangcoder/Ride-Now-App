import 'package:flutter/material.dart';
import 'package:ride_now/components/button/elevated_button.dart';

class ChangePassSuccess extends StatelessWidget {
  const ChangePassSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: MediaQuery.of(context).padding.top + 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF22C55E), width: 3.0),
                        borderRadius: BorderRadius.circular(40.0)
                      ),
                      child: const Icon(Icons.check, size: 45.74, color: Color(0xFF22C55E),),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Thay đổi mật khẩu thành công!",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                    color: Color(0xFF141414)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.7),
                child: Text(
                  "Mật khẩu của bạn đã được thay đổi thành công.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    color: Color(0xFF141414)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.7),
                child: Text(
                  "Vui lòng đăng nhập lại để tiếp tục sử dụng ứng dụng!",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    color: Color(0xFF141414)
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
           Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                width: 390.0,
                height: 104.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(top: 8.0, bottom: 40.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFFBFCFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.05), // Màu bóng
                      offset: Offset(0, 0), // Vị trí bóng (X, Y)
                      blurRadius: 12, // Độ làm mờ
                    ),
                  ],
                ),
                child: CustomElevatedButton(
                    color: const Color(0xFF2BC1BB),
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginDriverScreen()));
                    },
                    text: "Đăng nhập ngay",
                    textColor: const Color(0xFFFFFFFF),
                    fontSize: 18.0),
              ))
        ],
      ),
    );
  }
}