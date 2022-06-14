import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/constants/colors.dart';
import 'package:mapping_trekking_routes/constants/dimension.dart';
import 'package:mapping_trekking_routes/widget/custom_text.dart';

class MountainCard extends StatelessWidget {
  final String? name;
  final String? location;
  final String? image;
  final int? starCnt;

  const MountainCard({Key? key, required this.name, required this.location, required this.image, required this.starCnt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: Dimension.scaleWidth(20, context)),
      width: Dimension.scaleWidth(250, context),
      height: Dimension.scaleHeight(200, context),
      decoration: BoxDecoration(
          color: AppColors.WHITE_COLOR,
          borderRadius: BorderRadius.circular(Dimension.scaleRadius(10, context)),
          boxShadow: const [
            BoxShadow(offset: Offset(0, 0), blurRadius: 4, color: Color.fromRGBO(0, 0, 0, 0.05))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: Dimension.scaleWidth(250, context),
            height: Dimension.scaleHeight(130, context),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.scaleRadius(10, context)),
                  topRight: Radius.circular(Dimension.scaleRadius(10, context))),
              child: CachedNetworkImage(
                imageUrl: image!,
                placeholder: (context, url) => Padding(

                  padding: EdgeInsets.symmetric(horizontal: Dimension.scaleWidth(60, context), vertical: Dimension.scaleHeight(10, context)),
                  child: CircularProgressIndicator(color: AppColors.GREEN_COLOR, strokeWidth: Dimension.scaleWidth(2, context),)),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimension.scaleWidth(8, context),
                vertical: Dimension.scaleHeight(8, context)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: name!, fontSize: Dimension.scaleHeight(14, context),),
                SizedBox(
                  height: Dimension.scaleHeight(2, context),
                ),
                CustomText(text: location!, fontSize: Dimension.scaleHeight(14, context),),
                SizedBox(
                  height: Dimension.scaleHeight(2, context),
                ),
                SizedBox(
                  height: Dimension.scaleHeight(20, context),
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: starCnt!,
                      itemBuilder: (_, index) {
                        return Icon(
                          Icons.star,
                          color: AppColors.YELLOW_COLOR,
                          size: Dimension.scaleHeight(16, context),
                        );
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
