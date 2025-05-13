import 'package:flutter/material.dart';
import 'package:flutter_application_eyman/secreens/login.dart';
import 'package:flutter_application_eyman/secreens/minister_page.dart';
import 'package:flutter_application_eyman/secreens/search_page.dart';

void main() {
  runApp(const EducationMinisterApp());
}

class EducationMinisterApp extends StatelessWidget {
  const EducationMinisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Education System',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home:  LoginPage(),
        //  SearchPage(),
      // CertificateDashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
