import 'package:flutter/material.dart';

class SearchColumn extends StatelessWidget {
  const SearchColumn({super.key, required this.text, required this.onSearch});

  final String text;
  final ValueChanged<String> onSearch;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearch,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: const Icon(Icons.search),
        hintText: text,
      ),
    );
  }
}
