import 'package:fininfocom_task/custom_text_field.dart';
import 'package:fininfocom_task/home_screen.dart';
import 'package:fininfocom_task/validations.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  height: 300,
                  width: 500,
                  // color: Colors.red,
                  child: Image.asset(
                    "assets/fin.jpeg",
                    fit: BoxFit.fill,
                  )),
              CustomTextFormField(
                controller:  userName,
                  hintText: "Enter User Name",
                  prefixIcon: Icons.person,
                  isObscureText: false, isEnabled: true),
              const SizedBox(height: 10,),
              CustomTextFormField(
                  controller:  password,
                  hintText: "Enter Password",
                  prefixIcon: Icons.remove_red_eye,
                  isObscureText: true, isEnabled: true),
              const SizedBox(height: 50,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              ),
                  onPressed:  (){
                   if (Validations().isUserNameValid(userName.text, context)){
                     if(Validations().isPasswordValid(password.text, context)){
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));

                     }
                   }
                  },
                  child: const Text("Login", style: TextStyle(fontFamily: "Kiwi"),))
            ],
          ),
        ),
      ),
    );
  }
}
