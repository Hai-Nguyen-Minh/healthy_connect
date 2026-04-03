import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng Ký'), // Vietnamese for Register
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Họ và Tên'), // Full Name
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Số Điện Thoại'), // Phone
                keyboardType: TextInputType.phone,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Mật Khẩu'), // Password
                obscureText: true,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Xác Nhận Mật Khẩu'), // Confirm Password
                obscureText: true,
              ),
              Row(
                children: <Widget>[
                  Checkbox(value: false, onChanged: (bool? value) {}),
                  Text('Đồng Ý Điều Khoản'), // Terms
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {}, // Register Button
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Đăng Ký'), // Register
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {}, // Login Link
                child: Text('Đã Có Tài Khoản? Đăng Nhập'), // Already have an account? Log in
              ),
              SizedBox(height: 20),
              Text('Hoặc Đăng Nhập Bằng'), // Or register with
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.facebook), // Social Button Example
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.google), // Social Button Example
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}