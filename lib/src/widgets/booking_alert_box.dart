import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/constants.dart';
import 'package:flutter_demo/src/utils/utils.dart';

class BookingAlertBox extends StatelessWidget {
  final String date;
  const BookingAlertBox({Key key, this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context, dividedBy: 1),
      padding: EdgeInsets.symmetric(
        // horizontal: screenWidth(context, dividedBy: 25),
          vertical: screenHeight(context, dividedBy: 70)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(-2, 2),
                blurRadius: 2,
                spreadRadius: 2,
                color: Constants.colors[7].withOpacity(0.15))
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: screenHeight(context, dividedBy: 40)),
          Text(
            "Thank You for Booking",
            style: TextStyle(
                fontSize: 17,
                color: Constants.colors[3],
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: screenHeight(context, dividedBy: 70)),
          Text(
            "Your booking has been confirmed for " + date,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                color: Constants.colors[7],
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: screenHeight(context, dividedBy: 40)),
        ],
      ),
    );
  }
}
