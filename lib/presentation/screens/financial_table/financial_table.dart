import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_financial/domain/models/transaction.dart';
import 'package:share_financial/presentation/screens/add_financial/add_financial.dart';
import 'package:share_financial/presentation/screens/financial_table/util.dart';
import 'package:share_financial/presentation/view_model/transaction_provider.dart';
import 'package:table_calendar/table_calendar.dart';

class ShareFinancialScreen extends ConsumerStatefulWidget {
  const ShareFinancialScreen({super.key});

  @override
  ConsumerState<ShareFinancialScreen> createState() =>
      _ShareFinancialScreenState();
}

class _ShareFinancialScreenState extends ConsumerState<ShareFinancialScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  late final ValueNotifier<List<Event>> _selectedEvents;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Transaction>> transactionList =
        ref.watch(TransactionListProvider(_focusedDay));

    return switch (transactionList) {
      AsyncData(:final value) => Scaffold(
          appBar: AppBar(
            title: const Text('가계부'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  TableCalendar(
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                      ),
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: _focusedDay,
                      onDaySelected: (selectedDay, focusedDay) {
                        if (!isSameDay(_selectedDay, selectedDay)) {
                          setState(() {
                            _selectedDay = selectedDay;
                            _focusedDay = focusedDay;
                          });

                          _selectedEvents.value = _getEventsForDay(selectedDay);
                        }
                      },
                      selectedDayPredicate: (day) {
                        return isSameDay(_selectedDay, day);
                      },
                      onPageChanged: (focusedDay) {
                        _focusedDay = focusedDay;
                      },
                      eventLoader: (day) => value
                          .where((element) =>
                              element.date.year == day.year &&
                              element.date.month == day.month &&
                              element.date.day == day.day)
                          .toList(),
                      locale: 'ko_KR'),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      children: _selectedEvents.value
                          .map((Event event) => ListTile(
                                title: Text(event.title),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddFinancialScreen()));
            },
            child: const Icon(Icons.add),
          ),
        ),
      AsyncLoading() => const Center(child: CircularProgressIndicator()),
      AsyncError() => const Center(child: Text('Error')),
      _ => const Center(child: Text('Error2')),
    };
  }
}
