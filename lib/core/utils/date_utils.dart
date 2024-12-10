import 'dart:core';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> selectDate(BuildContext context,
    TextEditingController textFieldController,
    DateTime selectedDate,
    Function onPickDate,
    {DateTime? startDate}) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: selectedDate,
    lastDate: DateTime(2101),
  );

  if (picked != null && picked != selectedDate) {
    onPickDate.call(picked);
  }
}

extension DateTimeExtensions on DateTime {
  String? toFormattedDateTime(String? languageCode) {
    DateFormat monthFormat = DateFormat('MMM', languageCode);
    DateFormat dateFormat = DateFormat('dd,yyyy');
    DateFormat timeFormat = DateFormat('hh:mm');
    DateFormat dayPeriodFormat = DateFormat('a', languageCode);

    String month = monthFormat.format(this);
    String date = dateFormat.format(this);
    String time = timeFormat.format(this);
    String dayPeriod = dayPeriodFormat.format(this);

    return '$month $date - $time $dayPeriod';
  }

  String toFormattedDate() {
    return DateFormat('yyyy-MM-dd', 'en_US').format(this);
  }

  String toTimeAgoDate(String? languageCode) {
    timeago.setLocaleMessages('ar', timeago.ArMessages());
    timeago.setLocaleMessages('en', timeago.EnMessages());
    return timeago.format(this, locale: languageCode);
  }
}
