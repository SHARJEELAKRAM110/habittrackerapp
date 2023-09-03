import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../controller/HomeController.dart';
class Individual extends StatefulWidget {
  const Individual({super.key});

  @override
  State<Individual> createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  final _calendarCarouselNoHeader = CalendarCarousel<Event>(
    todayBorderColor: Colors.green,
    onDayPressed: (date, events) {
    },
    daysHaveCircularBorder: true,
    showOnlyCurrentMonthDate: false,
    weekendTextStyle: TextStyle(
      color: Colors.red,
    ),
    thisMonthDayBorderColor: Colors.grey,
    weekFormat: false,
//      firstDayOfWeek: 4,
    height: 420.0,
    customGridViewPhysics: NeverScrollableScrollPhysics(),
    markedDateCustomShapeBorder:
    CircleBorder(side: BorderSide(color: Colors.yellow)),
    markedDateCustomTextStyle: TextStyle(
      fontSize: 18,
      color: Colors.blue,
    ),
    showHeader: false,
    todayTextStyle: TextStyle(
      color: Colors.blue,
    ),
    // markedDateShowIcon: true,
    // markedDateIconMaxShown: 2,
    // markedDateIconBuilder: (event) {
    //   return event.icon;
    // },
    // markedDateMoreShowTotal:
    //     true,
    todayButtonColor: Colors.yellow,
    selectedDayTextStyle: TextStyle(
      color: Colors.yellow,
    ),

    prevDaysTextStyle: TextStyle(
      fontSize: 16,
      color: Colors.pinkAccent,
    ),
    inactiveDaysTextStyle: TextStyle(
      color: Colors.tealAccent,
      fontSize: 16,
    ),
    onCalendarChanged: (DateTime date) {

    },
    onDayLongPressed: (DateTime date) {
      print('long pressed date $date');
    },
  );

  String _currentMonth = DateFormat.yMMM().format(DateTime(2019, 2, 3));
  DateTime _targetDateTime = DateTime(2019, 2, 3);
//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2019, 2, 10): [
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  @override
  void initState() {
    /// Add more events to _markedDateMap EventList
    _markedDateMap.add(
        new DateTime(2019, 2, 25),
        new Event(
          date: new DateTime(2019, 2, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        new DateTime(2019, 2, 10),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(new DateTime(2019, 2, 11), [
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
    builder: (cont){
          return       Scaffold(
          body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(height: 20,),
          StreamBuilder(
          stream: cont.stream,
          builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
          return CustomText(text: "${snapshot.data['habitName']}",fontSize: 22,fontWeight: FontWeight.w600,);}else if(snapshot.hasError){
            return Container();

          }else if(snapshot.data==null){
            return Container();

          }else {// Return a placeholder or loading widget while waiting for data
            return CircularProgressIndicator();
          }}),
          SizedBox(height: 10.h,),
          SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Card(
          color: Color(0xff8C96FF),
          child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
    children: [
    CustomText(text: "0",fontSize: 35.sp,fontWeight: FontWeight.w600,),
    Padding(
    padding: const EdgeInsets.only(top: 8.0,left: 8),
    child: CustomText(text: "day streak",fontSize: 16.sp,fontWeight: FontWeight.w500,),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 8.0,left: 4),
    child: Icon(Icons.local_fire_department_rounded,color: Colors.deepOrange,),
    )


    ],
    ),
    ),
    ),
    ),
    SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Card(
    color: Color(0xff8C96FF),
    child: Padding(
    padding: const EdgeInsets.all(10.0),
    child:  CustomText(text: "Track this habit and your\n"
    "mood for 3 days total to see\n "
    "your facts",fontSize: 20.sp,fontWeight: FontWeight.w600,),

    ),
    ),
    ),
    Container(
    margin: EdgeInsets.only(
    top: 30.0,
    bottom: 16.0,
    left: 16.0,
    right: 16.0,
    ),
    child: Row(
    children: <Widget>[
    Expanded(
    child: Text(
    _currentMonth,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
    ),
    )),
    TextButton(
    child: Text('PREV'),
    onPressed: () {
    setState(() {
    _targetDateTime = DateTime(
    _targetDateTime.year, _targetDateTime.month - 1);
    _currentMonth =
    DateFormat.yMMM().format(_targetDateTime);
    });
    },
    ),
    TextButton(
    child: Text('NEXT'),
    onPressed: () {
    setState(() {
    _targetDateTime = DateTime(
    _targetDateTime.year, _targetDateTime.month + 1);
    _currentMonth =
    DateFormat.yMMM().format(_targetDateTime);
    });
    },
    )
    ],
    ),
    ),
    Container(
    height: 280.h,
    margin: EdgeInsets.only(left: 16.0,right: 16,top: 16),
    child: _calendarCarouselNoHeader,
    ),

    SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Card(
    color: Colors.orangeAccent,
    child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    CustomText(text: "You track this habit on:",fontSize: 12,fontWeight: FontWeight.w600,),
    CustomText(text: "Not completing your habit on grayed out\ndays"
    " doesn't affect your streak. ",fontSize: 12,fontWeight: FontWeight.w500,),
    ],
    )

    ),
    ),
    ),

    SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Card(
    color: Color(0xff8C96FF).withOpacity(0.4),
    child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    CustomText(text:"TIME SPENT",fontSize: 12,fontWeight: FontWeight.w600,),
    RichText(
    text: TextSpan(
    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
    TextSpan(text:"You've spent"),
    TextSpan(
    text: ' 0 minutes',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    ),
    ),
    TextSpan(text:" on\n this habit"),

    ],
    ),
    ),
    ],
    ),
    Column(
    children: [
    Icon(Icons.timer,size: 50,)

    ],
    )
    ],
    )
    ),
    ),
    ),
    SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Card(
    color: Colors.black,
    child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    CustomText(text:"LONGEST STREAK",fontSize: 12,fontWeight: FontWeight.w600,color: Colors.orangeAccent,),
    RichText(
    text: TextSpan(

    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
    TextSpan(text:"Your longest streak overall\n was",
    style: TextStyle(
    fontSize: 16,
    color: Colors.white
    ),
    ),
    TextSpan(
    text: ' 0 days',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.white
    ),
    ),

    ],
    ),
    ),
    ],
    ),
    Column(
    children: [
    Icon(Icons.wallet_giftcard_outlined,size: 50,color: Colors.white,)

    ],
    )
    ],
    )
    ),
    ),
    ),


    ],
    ),
    ),

    );

    }

    );}
}
