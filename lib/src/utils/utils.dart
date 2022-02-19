import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/constants.dart';
import 'package:flutter_demo/src/widgets/booking_alert_box.dart';

double screenHeight(context, {double dividedBy}) {
  return MediaQuery.of(context).size.height / dividedBy;
}

double screenWidth(context, {double dividedBy}) {
  return MediaQuery.of(context).size.width / dividedBy;
}

void push(context, Widget route) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => route));
}

void pop(context) {
  Navigator.pop(context);
}

void showBookingAlert(
  context, {
  String date,
}) {
  showDialog(
    context: context,
    barrierColor: Colors.transparent,
    builder: (BuildContext context) {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pop(true);
      });
      return Center(
        child: AlertDialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.symmetric(
              horizontal: screenWidth(context, dividedBy: 30),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            content: BookingAlertBox(date: date)),
      );
    },
  );
}
