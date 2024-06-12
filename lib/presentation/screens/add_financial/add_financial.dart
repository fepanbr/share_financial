import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddFinancialScreen extends StatefulWidget {
  const AddFinancialScreen({super.key});

  @override
  State<AddFinancialScreen> createState() => _AddFinancialScreenState();
}

class _AddFinancialScreenState extends State<AddFinancialScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // 선택된 탭과 컨텐츠 섹션이 동기화를 TabController 가 수행해 줌.
    _tabController = TabController(
      length: 2, // 탭의 전체 길이
      vsync: this, // TickerProvider 가 widget 을 다시 그리기 위한 파라미터임.
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('가계부 등록'),
      ),
      body: Column(
        children: [
          TabBar(controller: _tabController, tabs: const [
            Tab(
              text: '수입',
            ),
            Tab(
              text: '지출',
            ),
          ]),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: TabBarView(controller: _tabController, children: const [
              Placeholder(),
              ExpenditureInput(),
            ]),
          )),
        ],
      ),
    );
  }
}

class ExpenditureInput extends StatefulWidget {
  const ExpenditureInput({super.key});

  @override
  State<ExpenditureInput> createState() => ExpenditureInputState();
}

class ExpenditureInputState extends State<ExpenditureInput> {
  final _dateController = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()));
  final _amountController = TextEditingController(text: "0");
  final _contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
            controller: _dateController,
            decoration: const InputDecoration(
              labelText: '날짜',
              icon: Icon(Icons.calendar_today),
            ),
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate:
                    DateTime.parse(_dateController.text), //get today's date
                firstDate: DateTime(
                    2000), //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2101),
                initialEntryMode: DatePickerEntryMode.calendarOnly,
                locale: const Locale("ko", "KR"),
              );

              if (pickedDate != null) {
                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);

                setState(() {
                  _dateController.text = formattedDate;
                });
              }
            }),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _amountController,
          decoration:
              const InputDecoration(labelText: '금액', icon: Icon(Icons.money)),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _contentController,
          decoration:
              const InputDecoration(labelText: '내용', icon: Icon(Icons.edit)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(),
            child: const Text('저장'),
          ),
        ),
      ],
    );
  }
}
