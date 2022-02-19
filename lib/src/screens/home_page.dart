import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/constants.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter_demo/src/utils/utils.dart';
import 'package:flutter_demo/src/widgets/home_page_cards.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _selectedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.colors[2],
        appBar: AppBar(
          backgroundColor: Constants.colors[0],
          elevation: 0,
          centerTitle: true,
          leading: Container(),
          actions: [
            Container(
              width: screenWidth(context, dividedBy: 1),
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth(context, dividedBy: 30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Center(
                      child: Image.asset(
                        "assets/icons/list.png",
                        width: screenWidth(context, dividedBy: 15),
                        height: screenWidth(context, dividedBy: 15),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: screenWidth(context, dividedBy: 30),
                  ),
                  Image.asset("assets/icons/logo.png"),
                  Spacer(),
                  SizedBox(
                      // width: screenWidth(context, dividedBy: 7),
                      // height: screenWidth(context, dividedBy: 15),
                      child: Image.asset(
                    "assets/icons/search.png",
                    width: screenWidth(context, dividedBy: 15),
                    height: screenWidth(context, dividedBy: 15),
                    fit: BoxFit.cover,
                  )),
                ],
              ),
            ),
          ],
          // actions: [],
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth(context, dividedBy: 30)),
              child: Column(children: [
                SizedBox(height: screenHeight(context, dividedBy: 30)),
                DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Constants.colors[3],
                  selectedTextColor: Colors.white,
                  deactivatedColor: Colors.blue,
                  monthTextStyle: TextStyle(color: Colors.transparent),
                  dateTextStyle: TextStyle(
                      color: Constants.colors[7],
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                  dayTextStyle: TextStyle(
                      color: Constants.colors[7],
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
                SizedBox(height: screenHeight(context, dividedBy: 30)),
                ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        HomePageCard(
                          name: "At St george Hospital",
                          startTime: "11.00 AM",
                          endTime: "12.00 PM",
                          price: "32",
                          onTapView: () {},
                          onTapCall: () {},
                          onTapMap: () {},
                          onTapBooking: () {
                            print("Tapped");
                            showBookingAlert(context,
                                date: "Saturday 19th February 2022");
                          },
                        ),
                        SizedBox(height: screenHeight(context, dividedBy: 40)),
                      ],
                    );
                  },
                )
              ])),
        ),
      ),
    );
  }
}
