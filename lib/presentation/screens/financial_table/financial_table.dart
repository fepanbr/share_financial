import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ShareFinancialScreen extends StatefulWidget {
  const ShareFinancialScreen({super.key});

  @override
  State<ShareFinancialScreen> createState() => _ShareFinancialScreenState();
}

class _ShareFinancialScreenState extends State<ShareFinancialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('가계부'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              locale: 'ko_KR'),
        ),
      ),
    );
  }
}
