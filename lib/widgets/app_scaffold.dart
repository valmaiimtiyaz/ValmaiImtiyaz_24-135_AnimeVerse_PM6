import 'package:flutter/material.dart';

import 'gradient_background.dart';

class AppScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;

  const AppScaffold({super.key, this.appBar, required this.body});

  @override
  Widget build(BuildContext context) {
    // AppScaffold mengembalikan GradientBackground sebagai dasar
    return GradientBackground(
      //Di dalamnya ada Scaffold standar
      child: Scaffold(
        //pastikan scaffold transparan agar gradient terlihat
        backgroundColor: Colors.transparent,
        //Body dan AppBar dari scaffold akan diisi oleh widget apa yg kita kirim saat memanggil appscaffold
        appBar: appBar,
        body: body,
      ),
    );
  }
}
