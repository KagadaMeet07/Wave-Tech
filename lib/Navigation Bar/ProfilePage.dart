import 'package:e_commerce_app/Navigation%20Bar/terms&condition.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController FullNameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PassController = TextEditingController();


  static const String KEYNAME='name';
  static const String KEYEMAIL='Email';
  static const String KEYPASS='PassWord';

  var namevalue="";
  var emailvalue="";
  var passvalue="";


  @override
  void initState(){
    super. initState();
    getvalue();

  }
  var _formKey = GlobalKey<FormState>();
  var _key=GlobalKey<FormState>();
  @override

  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: Text("Profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black87,),)),


         Container(
             height: h * 0.1,
             width: w * 0.8,

             child: Image.asset("assets/images/profile.png")),
            SizedBox(height: 30),
       Container(
         height: h*0.1,
         width: w*0.8,
         child: TextFormField(
          controller:FullNameController ,
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
    key: _formKey,
    child:
    TextFormField(
    controller:EmailController ,

    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    prefixIcon: Icon(Icons.email_rounded),
    label:Text ("Email"),
    hintText: 'abc@gmail.com'


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


    SizedBox(height: 4,),
    Container(
    height: h*0.1,
    width: w*0.8,
    child: Form(
      key: _key,
      child:TextFormField(
    controller: PassController,
    obscureText: true,


    keyboardType: TextInputType.multiline,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    prefixIcon: Icon(Icons.remove_red_eye),
    label: Text("Password",
    ),
    hintText: 'Password',


    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Enter a password!';
    } else if (value.length < 8) {
    return 'Password must contain at least 8 character';
    }
    if(!value.contains(RegExp(r'[A-z]'))){
    return 'Password must contain at least one uppercase';
    }
    if(!value.contains(RegExp(r'[0-9]'))){
    return'Password must contain at least one number';
    }

    return null;

    },

    ),

    ),
    ),


            SizedBox(height: 15,),
            Container(
              width: w*0.8,
              child: ElevatedButton(


                child: const Text('Submit',style: TextStyle(color: Colors.white),),
                onPressed: ()async {

                  var prefs=await SharedPreferences.getInstance();
                  prefs.setString(KEYNAME,FullNameController.text.toString());

                  var emailprefs=await SharedPreferences.getInstance();
                  prefs.setString(KEYEMAIL,EmailController.text.toString());

                  var passprefs=await SharedPreferences.getInstance();
                  prefs.setString(KEYPASS,PassController.text.toString());




                  final isValid = _formKey.currentState!.validate();
                  if(!isValid){
                    return ;
                  };
                  final isVal=_key.currentState!.validate();
                  if(!isVal){
                    return;
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                ),
              ),
            ),

            SizedBox(height: 12,),
            Text(namevalue),
            Text(emailvalue),
            Text(passvalue),



            SizedBox(height: 12,),

            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TermsCondition(),));
            },
              child: Text("Terms & Condition",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 18),),),



            // Text('Terms & Condition',style: TextStyle( fontWeight: FontWeight.w500,fontSize: 25),),
            // Padding(
            //
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Look for Terms & Conditions "
            //       "User Agreement within the Wavetech app itself. "
            //       "If you can't find it there, check the Wavetech website for their legal information page."),
            // )


    ],

        ),


      ),
    );
  }

Future<void> getvalue() async {
  var prefs=await SharedPreferences.getInstance();
  var getName=prefs.getString(KEYNAME);
var getEmail=prefs.getString(KEYEMAIL);
  var getPass=prefs.getString(KEYPASS);
  setState(() {
    namevalue=getName!=null?getName:" ";
    emailvalue=getEmail!=null?getEmail:" ";
    passvalue=getPass!=null?getPass:" ";
  });
}
}