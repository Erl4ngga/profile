// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:profile/view/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome(); // Fungsi untuk berpindah ke halaman utama setelah beberapa waktu
  }

  void navigateToHome() async {
    await Future.delayed(const Duration(
        seconds: 3)); // Delay selama 3 detik (sesuaikan dengan kebutuhan Anda)
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (context) =>
              const Homepage()), // Ganti dengan halaman utama aplikasi
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitDoubleBounce(
              color: Colors.white,
              size: 50.0,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Selamat Datang',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
