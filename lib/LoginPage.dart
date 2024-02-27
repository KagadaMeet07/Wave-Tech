import 'package:e_commerce_app/ForgotPage.dart';
import 'package:e_commerce_app/SingupPage.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: h * 0.1,
              width: w * 0.8,
              child: Image.asset("assets/images/Wavetech logo.png"),
            ),
            Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: h * 0.1,
              width: w * 0.8,
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    prefixIcon: Icon(Icons.email_rounded),
                    labelText: "Email",
                    hintText: 'abc@gmail.com',
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 4),
            Container(
              height: h * 0.1,
              width: w * 0.8,
              child: Form(
                child: TextFormField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    prefixIcon: Icon(Icons.password_outlined),
                    labelText: "Password",
                    hintText: 'Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    else if (value.length<8)
                    {
                     return'Enter minimum 8 character' ;
                    }
                    else
                      {
                        return 'Required field';
                      }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 4),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: Text(
                'Forgot password?',
                style: TextStyle(fontWeight: FontWeight.w200, color: Colors.black87),
              ),
            ),
            SizedBox(height: 9),
            Container(
              width: w * 0.7,
              child: ElevatedButton(
                child: const Text('Login', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                    // Perform login
                  };
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text('or, Create a new account?', style: TextStyle(fontSize: 12)),
            SizedBox(height: 15),
            Container(
              width: w * 0.7,
              child: ElevatedButton(
                child: const Text('SignUp', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

