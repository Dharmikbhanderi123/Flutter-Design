// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_calendar/table_calendar.dart';

class calenderpage extends StatelessWidget {
  const calenderpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screenpage(),
    );
  }
}

class screenpage extends StatefulWidget {
  const screenpage({Key? key}) : super(key: key);

  @override
  State<screenpage> createState() => _screenpageState();
}

class _screenpageState extends State<screenpage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calendar"),
      ),
      body: TableCalendar(
        focusedDay: _focusedDay,
        firstDay: DateTime(2022),
        lastDay: DateTime(2023),
        calendarFormat: _calendarFormat,
        startingDayOfWeek: StartingDayOfWeek.monday,
        rowHeight: 60,
        daysOfWeekHeight: 60,
        headerStyle: HeaderStyle(
          titleTextStyle:
              const TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
          formatButtonTextStyle: const TextStyle(color: Colors.green),
          formatButtonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.teal, width: 2),
          ),
          leftChevronIcon: const Icon(
            Icons.arrow_back,
            color: Colors.teal,
            size: 28,
          ),
          rightChevronIcon: const Icon(
            Icons.arrow_forward,
            color: Colors.teal,
            size: 28,
          ),
        ),
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekendStyle: TextStyle(color: Colors.red),
        ),
        calendarStyle: const CalendarStyle(
          weekendTextStyle: TextStyle(color: Colors.red),
          todayDecoration: BoxDecoration(
            color: Colors.amber,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: Colors.teal,
            shape: BoxShape.circle,
          ),
        ),
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          }
        },
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onFormatChanged: (format) {
          if (_calendarFormat != format) {
            setState(() {
              _calendarFormat = format;
            });
          }
        },
      ),
    );
  }
}
