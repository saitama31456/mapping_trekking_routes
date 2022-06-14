import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/constants/colors.dart';
import 'package:mapping_trekking_routes/constants/dimension.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.32,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: AppColors.BLACK_COLOR.withOpacity(0.9),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      opacity: 0.8,
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/mapping-trekking-routes.appspot.com/o/Thumbnails%2FTriund%20Trek%20Loop.jpg?alt=media&token=f09c16d7-6f43-4656-8fbe-374253449b76'))),
            ),

            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimension.scaleHeight(20, context),
                      left: Dimension.scaleWidth(20, context)),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                          height: Dimension.scaleHeight(24, context),
                          width: Dimension.scaleWidth(24, context),
                          child: Icon(Icons.arrow_back, size: Dimension.scaleHeight(24, context), color: AppColors.WHITE_COLOR,)),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.115, left: 20),
                        child: Text(
                          "Chadar Trek",
                          style: TextStyle(
                            fontSize: Dimension.scaleHeight(22, context),
                            fontWeight: FontWeight.w600,
                            color: AppColors.WHITE_COLOR,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0, left: 20),
                        child: Text(
                          "Hemis National Park ",
                          style: TextStyle(
                              fontSize: Dimension.scaleHeight(15, context),
                              fontWeight: FontWeight.w300,
                              color: AppColors.WHITE_COLOR),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),

            Positioned(
              top: MediaQuery.of(context).size.height * 0.26,
              child: Container(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.scaleWidth(30, context)),
                    topRight: Radius.circular(Dimension.scaleWidth(30, context)),
                  ),
                  color: Colors.white,
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: Dimension.scaleHeight(25, context), horizontal: Dimension.scaleWidth(25, context)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.share_rounded,
                          size: Dimension.scaleHeight(30, context),
                        ),
                        Icon(
                          Icons.send_rounded,
                          size: Dimension.scaleHeight(30, context),
                        ),
                        Icon(
                          Icons.favorite_border_rounded,
                          size: Dimension.scaleHeight(30, context),
                        )
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.only(left: Dimension.scaleWidth(20, context)),
                    child: Text(
                      "Description",
                      style: TextStyle(fontSize: Dimension.scaleHeight(22, context), fontWeight: FontWeight.w600),
                    ),
                  ),                 
                  Padding(
                    padding: EdgeInsets.only(left: Dimension.scaleWidth(21, context), top: Dimension.scaleHeight(5, context), right: Dimension.scaleWidth(20, context)),
                    child: Text(
                      "The Chadar Trek or the Zanskar Gorge trek is a winter trail over the frozen Zanskar River, which lies in the Indian union territory of Ladakh. It is traditionally the only means of travel in the area during the harsh winter months. The trail has become popular with foreign adventure tourists.The Chadar Trek or the Zanskar Gorge trek is a winter trail over the frozen Zanskar River, which lies in the Indian union territory of Ladakh. It is traditionally the only means of travel in the area during the harsh winter months. The trail has become popular with foreign adventure tourists.The Chadar Trek or the Zanskar Gorge trek is a winter trail over the frozen Zanskar River, which lies in the Indian union territory of Ladakh. It is traditionally the only means of travel in the area during the harsh winter months. The trail has become popular with foreign adventure tourists.",
                      style: TextStyle(fontSize: Dimension.scaleHeight(15, context), fontWeight: FontWeight.w300),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: Dimension.scaleHeight(20, context), right: Dimension.scaleWidth(20, context), left: Dimension.scaleWidth(5, context)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: Dimension.scaleWidth(20, context), top: Dimension.scaleHeight(10, context)),
                              child: Text(
                                "Length",
                                style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Dimension.scaleWidth(20, context), top: Dimension.scaleHeight(10, context)),
                              child: Text(
                                "79.7 km",
                                style: TextStyle(fontSize: Dimension.scaleHeight(14, context), fontWeight: FontWeight.w300),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Dimension.scaleWidth(20, context), top: Dimension.scaleHeight(10, context)),
                              child: Text(
                                "Elevation",
                                style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Dimension.scaleWidth(20, context), top: Dimension.scaleHeight(10, context)),
                              child: Text(
                                "3736 m",
                                style: TextStyle(fontSize: Dimension.scaleHeight(14, context), fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: Dimension.scaleHeight(120, context),
                          width: 1,
                          color: Colors.black,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: Dimension.scaleWidth(20, context), top: Dimension.scaleHeight(10, context)),
                              child: Text(
                                "Best Month to Visit",
                                style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Dimension.scaleWidth(20, context), top: Dimension.scaleHeight(10, context)),
                              child: Text(
                                "June",
                                style: TextStyle(fontSize: Dimension.scaleHeight(14, context), fontWeight: FontWeight.w300),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Dimension.scaleWidth(20, context), top: Dimension.scaleHeight(10, context)),
                              child: Text(
                                "Time",
                                style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Dimension.scaleWidth(20, context), top: Dimension.scaleHeight(10, context)),
                              child: Text(
                                "2 hr",
                                style: TextStyle(fontSize: Dimension.scaleHeight(14, context), fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.only(left: Dimension.scaleWidth(20, context), bottom: Dimension.scaleHeight(10, context), top: Dimension.scaleHeight(20, context)),
                    child: Text(
                      "Weather",
                      style: TextStyle(fontSize: Dimension.scaleHeight(22, context), fontWeight: FontWeight.w600),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Sunday",
                            style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: Dimension.scaleHeight(5, context),),
                          Icon(
                            Icons.wb_sunny,
                            size: Dimension.scaleHeight(24, context),
                            color: Colors.black,
                          ),
                          SizedBox(height: Dimension.scaleHeight(5, context),),

                          Text(
                            "22°C",
                            style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Monday",
                            style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: Dimension.scaleHeight(5, context),),
                          Icon(
                            Icons.cloud,
                            size: Dimension.scaleHeight(24, context),
                            color: Colors.black,
                          ),
                          SizedBox(height: Dimension.scaleHeight(5, context),),
                          Text(
                            "22°C",
                            style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Tuesday",
                            style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: Dimension.scaleHeight(5, context),),
                          Icon(
                            Icons.cloud,
                            size: Dimension.scaleHeight(24, context),
                            color: Colors.black,
                          ),
                          SizedBox(height: Dimension.scaleHeight(5, context),),
                          Text(
                            "22°C",
                            style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Wednesday",
                            style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: Dimension.scaleHeight(5, context),),
                          Icon(
                            Icons.wb_sunny,
                            size: Dimension.scaleHeight(24, context),
                            color: Colors.black,
                          ),
                          SizedBox(height: Dimension.scaleHeight(5, context),),
                          Text(
                            "22°C",
                            style: TextStyle(fontSize: Dimension.scaleHeight(16, context), fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
