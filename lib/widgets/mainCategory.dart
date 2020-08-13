import 'package:flutter/material.dart';
import '../widgets/mainPageData.dart';

class CategoryCards extends StatelessWidget {
  CategoryCards({
    @required this.logoContainer,
    @required this.containerTitle,
    @required this.containerDescription,
    @required this.order,
  });

  final int order;
  final logoContainer;
  final String containerTitle;
  final String containerDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.5),
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x80cacaca),
            offset: Offset(0, -1),
            blurRadius: 16,
            spreadRadius: 2,
          ),
        ],
        color: const Color(0xffffffff),
      ),
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => category[order-1],
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            logoContainer,
            // 버스 정보
            Text(
              containerTitle,
              style: const TextStyle(
                color: const Color(0xff131415),
                fontWeight: FontWeight.w500,
                fontFamily: "NotoSansKR",
                fontStyle: FontStyle.normal,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
            // 실시간 위치를 알 수 있어요
            Text(
              containerDescription,
              style: const TextStyle(
                color: const Color(0xff5f605f),
                fontWeight: FontWeight.w500,
                fontFamily: "NotoSansKR",
                fontStyle: FontStyle.normal,
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
            // #셔틀 버스
//            Text(
//              "#셔틀 버스 #통근버스 #190번 버스",
//              style: const TextStyle(
//                color: const Color(0xff878787),
//                fontWeight: FontWeight.w500,
//                fontFamily: "NotoSansKR",
//                fontStyle: FontStyle.normal,
//                fontSize: 9.0,
//              ),
//              textAlign: TextAlign.center,
//            )
          ],
        ),
      ),
    );
  }
}
