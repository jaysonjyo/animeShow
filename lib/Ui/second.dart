import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screentwo extends StatefulWidget {
  final String first;
  final String text;
  final List<String> boxes;
  final String description;
  const Screentwo({super.key, required this.first, required this.text, required this.boxes, required this.description});

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:[ Container(
                height: 390.h,
                width: double.infinity,
                child: Image.network(widget.first,fit: BoxFit.cover),
                // child: Center(child: FlickVideoPlayer(flickManager: flickManager)),
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 26,),
                  child: TextButton(
                      onPressed: () { Navigator.of(context).pop(); },
                      child: Icon(Icons.arrow_back_ios)),
                )
              ]
            ),
            Container(
              width: 500.w,
              height: 800.h,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          SizedBox(width: 200.w,
                            child: Text(
                            widget.text,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontFamily: "mulish",
                                  fontWeight: FontWeight.w500),
                            ),
                          ),

                          SizedBox(
                            width: 130.w,
                          ),
                           Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 20,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 1,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text(
                            "5.6",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w200,
                              letterSpacing: 0.28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 30.h,
                      child: ListView.separated(
                          itemCount:widget.boxes.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 80.w,
                              height: 10.h,
                              decoration: ShapeDecoration(
                                  color: Color(0xFFDBE3FF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Center(
                                child: Text(
                                widget.boxes[index],
                                  style: TextStyle(
                                    color: Color(0xFF87A3E8),
                                    fontSize: 11.sp,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.16,
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 10.w,
                            );
                          }),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Length',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 22.sp,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              ),
                              Text(
                                '2h 28min',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.24,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 23.w,
                          ),
                          Column(
                            children: [
                              Text(
                                'Language',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 22.sp,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 45),
                                child: Text(
                                  'English',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 23.w,
                          ),
                          Column(
                            children: [
                              Text(
                                'Rating',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 22.sp,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Text(
                                  'PG-13',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                        color: Color(0xFF110E47),
                        fontSize: 20.sp,
                        fontFamily: 'Merriweather',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(widget.description,
                      style: TextStyle(
                        color: Color(0xFF9B9B9B),
                        fontSize: 13.sp,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
