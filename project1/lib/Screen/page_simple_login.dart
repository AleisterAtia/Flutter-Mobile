import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:project1/Screen/next_page_login.dart';

class PageSimpleLogin extends StatefulWidget {
  const PageSimpleLogin({super.key});

  @override
  State<PageSimpleLogin> createState() => _PageSimpleLoginState();
}

TextEditingController emailController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

String nUsername = "";
String nPassword = "";

class _PageSimpleLoginState extends State<PageSimpleLogin> {
  void showToastMessage(String message) {
    showToast(
      message,
      context: context,
      animation: StyledToastAnimation.scale,
      reverseAnimation: StyledToastAnimation.fade,
      position: StyledToastPosition.bottom,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.black54,
      textStyle: TextStyle(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appBar : properti dari sebuah widget
        backgroundColor: Colors.purple,
        title: Text('Simple Login', style: TextStyle(color: Colors.white)),
      ),
      body: Form(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Form Login User",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),

            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
              ),
            ),
            SizedBox(height: 10),

            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
              ),
            ),
            SizedBox(height: 10),

            MaterialButton(
              onPressed: () {
                String nUsername = emailController.text;
                String nPassword = passwordController.text;

                if (nUsername.isEmpty || nPassword.isEmpty) {
                  showToastMessage("Email dan Password harus diisi!");
                } else {
                  // 1. Menampilkan Toast
                  showToastMessage(
                    "Username: $nUsername\nPassword: $nPassword",
                  );

                  // 2. Navigasi ke halaman berikutnya
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => NextPage(
                            nUsername: nUsername,
                            nPassword: nPassword,
                          ),
                    ),
                  );
                }
              },
              color: Colors.purple,
              textColor: Colors.white,
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
