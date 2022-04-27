import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/screens/home/home.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({Key? key}) : super(key: key);

  @override
  _SwipePageState createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF94b2a4),
      //94b2a4
      body: Stack(children: <Widget>[
        Container(
          width: 320.w,
          height: 640.h,

          child: Swiper.children(
            autoplay: false,
            loop: false,
            //control: new SwiperControl(),
            pagination: SwiperPagination(
                //    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                builder: DotSwiperPaginationBuilder(
                    color: Colors.white30,
                    activeColor: Colors.white,
                    size: 15.0.sp,
                    activeSize: 10.0.sp)),
            children: <Widget>[
              Image.asset(
                "asset/discription1.jpg",
                fit: BoxFit.fitWidth,
                // width: 2000,
              ),
              Image.asset(
                "asset/discription2.jpg",
                fit: BoxFit.fitWidth,
              ),
              Image.asset("asset/discription3.jpg", fit: BoxFit.fitWidth),
            ],
          ),
          // height: ScreenUtil().setHeight(2100),
          // width: ScreenUtil().setWidth(1080),
        ),
        Column(children: <Widget>[
          SizedBox(
            height: 500.h,
          ),
          Center(
            child: OutlinedButton(
              child: const Text("누르면 홈으로 갑니다"),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF000000), // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Home()));
              },
            ),
          ),
        ]),
      ]),
    );
  }
}
