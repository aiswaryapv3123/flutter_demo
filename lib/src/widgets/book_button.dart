import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/utils.dart';
import 'package:flutter_demo/src/utils/constants.dart';

class BookButton extends StatefulWidget {
  final Function onPressed;
  final String label;
  const BookButton({Key key, this.onPressed, this.label}) : super(key: key);

  @override
  _BookButtonState createState() => _BookButtonState();
}

class _BookButtonState extends State<BookButton> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed();
        setState(() {
          tapped = true;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth(context, dividedBy: 24),
            vertical: screenHeight(context, dividedBy: 90)),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  tapped == false ? Constants.colors[6] : Colors.grey.shade300,
                  tapped == false ? Constants.colors[5] : Colors.grey.shade300,
                ]),
            color: Constants.colors[3],
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          widget.label,
          style: TextStyle(
              fontSize: 13,
              color: tapped == false ? Colors.white : Colors.black,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
