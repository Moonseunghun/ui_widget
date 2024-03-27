import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget listItem(int index) {
  return Container(
    height: 82,
    margin: EdgeInsets.only(top: 16),
    decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
      side: BorderSide(color: Color(0xffd9d9d9), width: 1),
      borderRadius: BorderRadius.circular(10),
    )),
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        //아이디어 제목
        Container(
          margin: EdgeInsets.only(left: 16, bottom: 16),
          child: Text(
            '# 환경보존 문제해결 앱 아아디어',
            style: TextStyle(fontSize: 16),
          ),
        ),
        //일시
        // 강제적으로 위치를 옮기고싶을떄
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.only(left: 16, bottom: 16),
            child: Text(
              '2024년3월27일',
              style: TextStyle(color: Color(0xffaeaeae), fontSize: 10),
            ),
          ),
        ),
        //아이디어 중요도 점수
       Align(
         alignment: Alignment.bottomLeft,
         child:Container(
           margin: EdgeInsets.only(left: 16, bottom: 16),
           child: RatingBar.builder(
             initialRating: 3,
             minRating: 1,
             direction: Axis.horizontal,
             itemCount: 5,
             itemSize: 16,
             itemPadding: EdgeInsets.symmetric(horizontal:  0),
             itemBuilder: (context, index) {
               return Icon(
                 Icons.star,
                 color: Colors.amber,
               );
             },
             onRatingUpdate: (value) {}),
         ) ,)
      ],
    ),
  );
}
