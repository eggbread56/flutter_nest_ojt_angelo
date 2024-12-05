import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Nest_dark.png',
            width: 100,
            height: 100,
          ),
          SizedBox(height: 20),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                fontSize: 12,
                color: const Color(0xFF888888)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: const Color(0xFFD2D2D2),
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: const Color(0xFFD2D2D2),
                  width: 2,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: passwordController, 
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                fontSize: 12,
                color: const Color(0xFF888888),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: const Color(0xFFD2D2D2),
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: const Color(0xFFD2D2D2),
                  width: 2,
                ),
              ),
            ),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {

            }, 
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF2F2F2F),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 15,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            }, 
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: Color(0xFF888888),
                    margin: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                  ),
                ),
                Text(
                  'or Register',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF888888),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: Color(0xFF888888),
                    margin: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      )
    );
  }
}