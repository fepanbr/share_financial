import 'package:flutter/material.dart';

class AddFinancialScreen extends StatefulWidget {
  const AddFinancialScreen({super.key});

  @override
  State<AddFinancialScreen> createState() => _AddFinancialScreenState();
}

class _AddFinancialScreenState extends State<AddFinancialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('가계부 등록'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: '날짜'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: '금액'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: '내용'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('저장'),
            ),
          ],
        ),
      ),
    );
  }
}
