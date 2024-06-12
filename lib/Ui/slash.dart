import 'package:anime/Ui/first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Screen1()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body:
        Center(child: SizedBox(width: 150.w,height: 150.h,
          child: ClipRRect(borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/slash.png")),
        ))
       ,


    );
  }
}
