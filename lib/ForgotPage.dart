import 'package:flutter/material.dart';
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(

               // style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'abc@gmail.com',
                  label: Text('Email'),
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    color: Colors.black87,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  )
                ),

              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Send Email'),
                onPressed: () {},
              ),

            ],
          ),
        ),
      ),

    );
  }
}
