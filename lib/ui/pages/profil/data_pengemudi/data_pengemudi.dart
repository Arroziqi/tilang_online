import 'package:flutter/material.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';

class DataPengemudi extends StatelessWidget {
  const DataPengemudi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customBackNavigationAppBar(context: context, title: 'Data Pengemudi'),
    );
  }
}
