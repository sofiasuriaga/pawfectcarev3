import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

String? getFormattedDateTime() {
  DateTime now = DateTime.now();
  DateFormat dateFormat =
      DateFormat('dd-MM-yyyy HH:mm'); // Includes hours and minutes

  return dateFormat.format(now);
}

String? formatDateOnly(String datetimeString) {
  DateTime dateTime = DateTime.parse(datetimeString);
  return dateTime.toIso8601String().split('T')[0];
}

String? calculateAgeFromBirthdayString(String birthdayStr) {
  final monthsMap = {
    'January': 1,
    'February': 2,
    'March': 3,
    'April': 4,
    'May': 5,
    'June': 6,
    'July': 7,
    'August': 8,
    'September': 9,
    'October': 10,
    'November': 11,
    'December': 12,
  };

  try {
    final parts = birthdayStr.split(' ');
    if (parts.length != 3) return 'Invalid format';

    final month = monthsMap[parts[0]];
    final day = int.parse(parts[1].replaceAll(',', ''));
    final year = int.parse(parts[2]);

    if (month == null) return 'Invalid month';

    final birthday = DateTime(year, month, day);
    final now = DateTime.now();

    if (now.isBefore(birthday)) return 'Invalid birthday';

    final totalDays = now.difference(birthday).inDays;

    final years = now.year -
        birthday.year -
        ((now.month < birthday.month ||
                (now.month == birthday.month && now.day < birthday.day))
            ? 1
            : 0);

    if (years > 0) {
      return '$years yr${years > 1 ? 's' : ''} old';
    }

    final monthDiff =
        (now.year - birthday.year) * 12 + (now.month - birthday.month);
    final isBeforeDay = now.day < birthday.day;
    final months = isBeforeDay ? monthDiff - 1 : monthDiff;

    if (months > 0) {
      return '$months month${months > 1 ? 's' : ''} old';
    }

    return '$totalDays day${totalDays > 1 ? 's' : ''}';
  } catch (e) {
    return 'Invalid input';
  }
}
