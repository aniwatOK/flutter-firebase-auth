import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  Future<void> _createAccount(BuildContext context) async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      _showSnackbar(context, 'กรุณากรอกข้อมูลให้ครบถ้วน');
      return;
    }
    if (password != confirmPassword) {
      _showSnackbar(context, 'รหัสผ่านไม่ตรงกัน');
      return;
    }

    final FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('สร้างบัญชีสำเร็จ! กรุณาเข้าสู่ระบบ'),
            backgroundColor: Colors.green),
      );
      Navigator.pop(context); // กลับไปหน้า Login
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        _showSnackbar(context, 'รหัสผ่านอ่อนเกินไป');
      } else if (e.code == 'email-already-in-use') {
        _showSnackbar(context, 'อีเมลนี้ถูกใช้ไปแล้ว');
      } else {
        _showSnackbar(context, 'เกิดข้อผิดพลาด: ${e.message}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Account')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                  labelText: 'Confirm Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _createAccount(context),
              child: Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
