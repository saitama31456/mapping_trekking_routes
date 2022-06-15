  import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mapping_trekking_routes/constants/classes.dart';
class FirebaseMethods{

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

Future<UserCredential?> signInWithEmailPassword(String email, String password) async {

  // Once signed in, return the UserCredential
  UserCredential userCredential;
  try{
  userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  return userCredential;
  } catch(e){
    print("exception found");
  }
  return null;
}

void signOutGoogle(context) async{
  await GoogleSignIn().signOut();
  await FirebaseAuth.instance.signOut();
  print("User Sign Out");
  print( "current user " + FirebaseAuth.instance.currentUser.toString());
  Navigator.pushNamedAndRemoveUntil(context, Classes.loginScreen, (route) => false);
}
}