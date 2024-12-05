import 'package:flutter/material.dart';
import 'login_page.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  void _navigateToLogin() async {
    await Future.delayed(Duration(seconds: 10));
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(builder: (context) => LoginPage()),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF0172B2),
              const Color(0xFF001645),
            ],
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nest',
                style: TextStyle(
                  fontSize: 42,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Image.asset(
                'assets/images/Nest.png',
                width: 42,
                height: 42,
              ),
            ],
          ),
        ),
      )
    );
  }
}