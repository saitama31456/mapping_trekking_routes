import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/constants/colors.dart';
import 'package:mapping_trekking_routes/constants/dimension.dart';
import 'package:mapping_trekking_routes/widget/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Login login = context.read<Login>();
    return Scaffold(
      backgroundColor: AppColors.BG_COLOR,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + Dimension.scaleHeight(100, context)),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Dimension.scaleWidth(32, context),
              vertical: Dimension.scaleHeight(14, context)),
          width: double.infinity,
          // color: AppColors.WHITE_COLOR,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: Dimension.scaleWidth(100, context),
                height: Dimension.scaleHeight(100, context),
                decoration: BoxDecoration(
                  image:
                      DecorationImage(
                        image: NetworkImage(
                          
                        'https://firebasestorage.googleapis.com/v0/b/mapping-trekking-routes.appspot.com/o/Thumbnails%2FChadar%20Trek.jpg?alt=media&token=95746b9e-952e-4eec-86d3-b225df5d54ba'),
                        fit: BoxFit.cover,
                        ),
                  shape: BoxShape.circle,
                  
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: Dimension.scaleHeight(24, context)),
                      const Text(
                        'Username',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: Dimension.scaleHeight(6, context)),
                      Text(
                        'Ashik Saini',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: Dimension.scaleHeight(24, context),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: Dimension.scaleHeight(22, context)),
                      const Text(
                        'E-mail',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: Dimension.scaleHeight(6, context)),
                      Text(
                        'login.user!.email',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: Dimension.scaleHeight(24, context),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: Dimension.scaleHeight(22, context)),
                      const Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: Dimension.scaleHeight(6, context)),
                      Text(
                        '9982696197',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: Dimension.scaleHeight(24, context),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: Dimension.scaleHeight(32, context)),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: CustomButton(
                            title: 'Logout',
                            onPress: () async {
                              print('logout');
                              SharedPreferences preferences = await SharedPreferences.getInstance();
                              preferences.clear();
                              FirebaseAuth.instance.signOut();
                              // Navigator.pushNamedAndRemoveUntil(context, Classes.googleSignin, (route) => false);
                            }),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}