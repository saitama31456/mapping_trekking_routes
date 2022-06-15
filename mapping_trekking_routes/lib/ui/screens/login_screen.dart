import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/constants/assets.dart';
import 'package:mapping_trekking_routes/constants/classes.dart';
import 'package:mapping_trekking_routes/utils/firebase_methods.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Center(
              child: Column(
            children: [
              Image.asset(
                Assets.LOGO,
                width: 300,
                height: 200,
              ),
              const Text(
                'Login',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
               TextField(
                controller: emailController,
                  cursorColor: Colors.green,
                  decoration: const InputDecoration(
                      hintText: 'Enter your email',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)))),
              const SizedBox(
                height: 30,
              ),
               TextField(
                obscureText: true,
                controller: passwordController,
                  cursorColor: Colors.green,
                  decoration: const InputDecoration(
                      hintText: 'Enter your password',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)))),
              const SizedBox(height: 30,),
              InkWell(
                onTap: () async {
                  print('sign in with email id');
                  if(emailController.text != '' && passwordController.text != '' && emailController.text != null && passwordController.text != null){
                  UserCredential? userCredential = await FirebaseMethods().signInWithEmailPassword(emailController.text, passwordController.text);
                  if(userCredential != null){
                    Navigator.pushNamedAndRemoveUntil(context, Classes.bottomNav, (route) => false);
                  }
                  } else{
                    print("please enter email and password");
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter email and password.')));
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric( vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: const Center(child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),)),
                ),
              ),

              const SizedBox(height: 30,),
              InkWell(
                onTap: () async {
                  print('sign in with google');
                  UserCredential userCredential = await FirebaseMethods().signInWithGoogle();
                  print("user credential $userCredential");
                  if(userCredential != null){
                    // ignore: use_build_context_synchronously
                    Navigator.pushNamedAndRemoveUntil(context, Classes.bottomNav, (route) => false);
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric( vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: const Center(child: Text('Sign in with google', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),)),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
