import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mapping_trekking_routes/constants/classes.dart';
import 'package:mapping_trekking_routes/utils/firebase_methods.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: InkWell(
                onTap: () async {
                  print('sign in with google');
                  FirebaseMethods().signOutGoogle(context);
                },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: const Center(child: Text('Sign out', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),)),
                ),
              ),
    );
  }
}