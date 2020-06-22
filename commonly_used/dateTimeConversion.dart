import 'package:urbancultur/app_localization.dart';
String monthFromDigits(int digits) {
  switch (digits) {
    case 1:
      return 'January';
    case 2:
      return 'Feburary';
    case 3:
      return 'March';
    case 4:
      return 'April';
    case 5:
      return 'May';
    case 6:
      return 'June';
    case 7:
      return 'July';
    case 8:
      return 'August';
    case 9:
      return 'September';
    case 10:
      return 'October';
    case 11:
      return 'November';
    case 12:
      return 'December';
    default:
      return 'January';
  }
}

String _weekdayFromDigits(int digits) {
  switch (digits) {
    case 1:
      return 'Monday';
    case 2:
      return 'Tuesday';
    case 3:
      return 'Wednesday';
    case 4:
      return 'Thursday';
    case 5:
      return 'Friday';
    case 6:
      return 'Saturday';
    case 7:
      return 'Sunday';
    default:
      return '';
  }
}

///Returns Date Month Time String
String dateTimeConversion(DateTime dateTime) {
  String time = (dateTime.hour > 12)
      ? (dateTime.hour - 12).toString() +
          ":" +
          dateTime.minute.toString() +
          " PM"
      : (dateTime.hour - 12).toString() +
          ":" +
          dateTime.minute.toString() +
          " AM";
  return dateTime.day.toString() +
      " " +
      monthFromDigits(dateTime.month).substring(0, 3) +
      " " +
      time;
}

///Returns Date Month Year Time String
String dateTimeYearConversion(DateTime dateTime) {
  String time = (dateTime.hour > 12)
      ? (dateTime.hour - 12).toString() +
          ":" +
          dateTime.minute.toString() +
          " PM"
      : (dateTime.hour - 12).toString() +
          ":" +
          dateTime.minute.toString() +
          " AM";
  return dateTime.day.toString() +
      " " +
      monthFromDigits(dateTime.month).substring(0, 3) +
      " " +
      dateTime.year.toString() +
      " " +
      time;
}

///Returns Date Month String
String dateMonthConversion(DateTime date) {
  return date.day.toString() +
      " " +
      monthFromDigits(date.month).substring(0, 3);
}

///Returns weekday, Date Month String
String dateWeekdayConversion(DateTime date) {
  var ans = _weekdayFromDigits(date.weekday).toLowerCase() +
      ", " +
      date.day.toString() +
      " " +
      monthFromDigits(date.month).substring(0, 3);
  print("ans::" + ans);
  return ans;
}

DateTime absoluteDateTime(DateTime date) {
  return new DateTime(date.year, date.month, date.day,0,0,0);
}
