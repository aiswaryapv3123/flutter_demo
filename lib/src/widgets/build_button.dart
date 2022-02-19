import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/utils.dart';
import 'package:flutter_demo/src/utils/constants.dart';

class BuildButton extends StatefulWidget {
  final Function onPressed;
  final String label;
  const BuildButton({Key key, this.onPressed, this.label}) : super(key: key);

  @override
  _BuildButtonState createState() => _BuildButtonState();
}

class _BuildButtonState extends State<BuildButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth(context, dividedBy: 24),
            vertical: screenHeight(context, dividedBy: 90)),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Constants.colors[3],
                  Constants.colors[4],
                ]),
            color: Constants.colors[3],
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          widget.label,
          style: TextStyle(
              fontSize: 13, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
