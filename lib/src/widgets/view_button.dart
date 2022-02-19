import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/utils.dart';
import 'package:flutter_demo/src/utils/constants.dart';

class ViewButton extends StatefulWidget {
  final Function onPressed;
  final String label;
  const ViewButton({Key key, this.onPressed, this.label}) : super(key: key);

  @override
  _ViewButtonState createState() => _ViewButtonState();
}

class _ViewButtonState extends State<ViewButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth(context, dividedBy: 40),
            vertical: screenHeight(context, dividedBy: 200)),
        decoration: BoxDecoration(
            color: Constants.colors[2].withOpacity(0.6),
            border: Border.all(
                color: Constants.colors[3].withOpacity(0.6), width: 0.5),
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          widget.label,
          style: TextStyle(
              fontSize: 13,
              color: Constants.colors[3],
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
