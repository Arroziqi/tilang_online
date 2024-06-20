import 'package:flutter/material.dart';

class InputSelect extends StatefulWidget {
  const InputSelect({super.key, required this.hintText, required this.selectItems});

  final String hintText;
  final selectItems;

  @override
  State<InputSelect> createState() => _InputSelectState();
}

class _InputSelectState extends State<InputSelect> {

  late List<Map> selectItems;

  @override
  void initState() {
    super.initState();
    selectItems = widget.selectItems; // Inisialisasi berdasarkan parameter
  }

  var _value = 'tampilan';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      // value: _value,
      items: widget.selectItems
          .map(
            (selectItem) => DropdownMenuItem(
              child: Text(
                selectItem['text'],
              ),
              value: selectItem['value'],
            ),
          )
          .toList(),
      onChanged: (v) {},
      isExpanded: true,
    );
  }
}
