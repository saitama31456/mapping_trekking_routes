import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/constants/colors.dart';
import 'package:mapping_trekking_routes/constants/dimension.dart';

class CustomButton extends StatelessWidget {
  final Function onPress;
  final String title;
  const CustomButton({ Key? key, required this.title, required this.onPress }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(),
      child: Container(
        decoration: BoxDecoration(
        color: AppColors.GREEN_COLOR.withOpacity(0.9),
        borderRadius: BorderRadius.circular(8)
        ),
        padding: EdgeInsets.symmetric(vertical: Dimension.scaleHeight(14, context), horizontal: Dimension.scaleWidth(28, context)),
        child: Text(title, style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
  }
}