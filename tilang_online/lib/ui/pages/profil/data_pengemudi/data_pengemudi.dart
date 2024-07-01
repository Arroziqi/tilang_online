import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/profile/data_pengemudi/data_pengemudi_class.dart';
import 'package:flutter_app/models/pages/profile/data_pengemudi/data_pengemudi_items.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';

class DataPengemudi extends StatelessWidget {
  const DataPengemudi({super.key});

  Widget buildFormField(DataPengemudiClass item) {
    if (item.type == 'upload') {
      return GestureDetector(
        onTap: () {
          // Just a placeholder for the upload action
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Column(
              children: [
                Icon(Icons.cloud_upload, color: Colors.red, size: 50),
                Text(
                  item.label,
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: item.label,
            border: OutlineInputBorder(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final items = DataPengemudiItems().items;

    return Scaffold(
      appBar: customBackNavigationAppBar(
          context: context, title: 'Form Data Pengemudi'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ...items.map((item) => buildFormField(item)).toList(),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print('Navigating to success page'); // Debug print
                  Navigator.pushNamed(
                      context, '/profile/data-pengemudi-success');
                },
                child: const Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
