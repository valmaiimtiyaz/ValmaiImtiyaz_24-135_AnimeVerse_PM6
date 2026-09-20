import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  //widget ini membutuhkan widget lain untuk ditampilkan di atasnya
  const GradientBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    //gunakan container sebagai dasar
    return Container(
      //properti decoration untuk styling visual
      decoration: const BoxDecoration(
        //definisikan gradient linear
        gradient: LinearGradient(
          colors: [
            Color(0xFF333465), //warna awal
            Color(0XFF0b395e), //warna akhir
          ],
          begin: Alignment.topLeft, //arah mulai gradient
          end: Alignment.bottomRight, //arah akhir gradient
        ),
      ),
      //tam,pilkan widget child di atas container yg sudah bergradient
      child: child,
    );
  }
}
