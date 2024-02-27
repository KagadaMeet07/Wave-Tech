
import 'package:e_commerce_app/LoginPage.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});



  TextEditingController name_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController pass_controller = TextEditingController();


  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  var _key = GlobalKey<FormState>();
  var isLoad=false;

  void _Submit(){
    final isvalid= _key.currentState!.validate();
    if(!isvalid){
      return;
    }
  }
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: h*0.1,
                  width: w*0.8,
                  child: Image.asset("assets/images/Wavetech logo.png")),

              Center(child: Text('SignUp',style: TextStyle(color: Colors.black87,fontSize: 22,fontWeight: FontWeight.w700),)),
SizedBox(height: 10,),

              SizedBox(height: 10,),
              Container(
                width: w*0.8,
                height: h*0.1,
                child: TextFormField(
                  controller:name_controller ,
                        validator: (value) {
                          if (value!.isEmpty)
                          {
                            return 'Enter a name';
                          }
                          return 'Required Name';
                        },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text('Name'),
                    hintText: 'acbd',
                    prefixIcon: Icon(Icons.people),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    )
                  ),
                ),
              ),
    SizedBox(height: 7,),
    Container(
    height: h*0.1,
    width: w*0.8,
    child: Form(
    key: _key,
    child:
                  TextFormField(
                    controller:email_controller ,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return 'Required Email';
                    },

                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        prefixIcon: Icon(Icons.email_rounded),
                        label:Text ("Email"),
                        hintText: 'abc@gmail.com'


                    ),
                  ),
                ),
              ),


              SizedBox(height: 4,),
              Container(
                height: h*0.1,
                width: w*0.8,
                child: Form(child:TextFormField(
                  controller: pass_controller,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Password';
                    }
                    return 'Required Password';
                  },


                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    prefixIcon: Icon(Icons.password_outlined),
                    label: Text("Password"),
                    hintText: 'Password',


                  ),
                ),

                ),
              ),


              SizedBox(height: 4,),
              Container(
                height: h*0.1,
                width: w*0.8,
                child: Form(child:TextFormField(
                  controller: pass_controller,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$")
                            .hasMatch(value)) {
                      return 'Enter a valid Password';
                    }
                    return 'Required Password';
                  },


                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    prefixIcon: Icon(Icons.password_outlined),
                    label: Text("Re-enterPassword"),
                    hintText: 'Re-enterPassword',


                  ),
                ),

                ),
              ),
              SizedBox(height: 9,),
              Container(
                width: w*0.7,
                child: ElevatedButton(


                  child: const Text('Sign Up',style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>  LoginPage()),);

                    final isValid = _key.currentState!.validate();
                    if(!isValid){
                      return ;
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text('Alreadt have an account?',style: TextStyle(fontSize: 12),),
              SizedBox(height: 15,),
              Container(
                width: w*0.7,
                child: ElevatedButton(
                  child: const Text('Login',style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) =>  LoginPage()),);

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,

                  ),
                ),
              ),
            ]
        ),
      ),

    );
  }
}

