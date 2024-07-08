import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_financial/domain/models/asset.dart';
import 'package:share_financial/domain/models/transaction.dart';
import 'package:share_financial/presentation/screens/asset_group_setting/asset_group_setting.dart';
import 'package:share_financial/presentation/screens/category_setting/category_setting.dart';
import 'package:share_financial/domain/models/category.dart'
    as FinancialCategory;
import 'package:share_financial/presentation/view_model/add_financial_provider.dart';

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

class ExpenditureInput extends ConsumerStatefulWidget {
  const ExpenditureInput({super.key});

  @override
  ConsumerState<ExpenditureInput> createState() => ExpenditureInputState();
}

class ExpenditureInputState extends ConsumerState<ExpenditureInput> {
  final _dateController = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()));
  final _amountController = TextEditingController(text: "0");
  final _contentController = TextEditingController();
  final _categoryController = TextEditingController();
  final _assetController = TextEditingController();

  FinancialCategory.Category? _category;
  Asset? _asset;

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
          autofocus: true,
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _contentController,
          decoration:
              const InputDecoration(labelText: '내용', icon: Icon(Icons.edit)),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _categoryController,
          decoration: const InputDecoration(
            labelText: '카테고리',
            icon: Icon(Icons.category),
          ),
          readOnly: true,
          onTap: () async {
            var result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategorySettingScreen()));

            if (!context.mounted) return;
            if (result == null) return;

            if (result is FinancialCategory.Category) {
              setState(() {
                _category = result;
              });
              _categoryController.text = result.name;
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _assetController,
          decoration:
              const InputDecoration(labelText: '자산', icon: Icon(Icons.person)),
          onTap: () async {
            var result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AssetGroupSettingScreen()));

            if (!context.mounted) return;
            if (result == null) return;

            if (result is Asset) {
              setState(() {
                _asset = result;
              });
              _assetController.text = result.name;
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
          child: ElevatedButton(
            onPressed: () {
              print(_dateController.text);
              print(_amountController.text);
              print(_contentController.text);
              print(_categoryController.text);
              print(_assetController.text);

              ref
                  .read(transactionListProvider.notifier)
                  .addTransaction(NewTransaction(
                    memo: _contentController.text,
                    amount: double.parse(_amountController.text),
                    date: DateTime.parse(_dateController.text),
                    userId: 1,
                    categoryId: _category?.id ?? 0,
                    assetId: _asset?.id ?? 0,
                  ))
                  .then(() {
                    Navigator.pop(context);
                  } as FutureOr Function(void value));
            },
            style: ElevatedButton.styleFrom(),
            child: const Text('저장'),
          ),
        ),
      ],
    );
  }
}
