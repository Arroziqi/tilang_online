import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class SearchColumn extends StatefulWidget {
  const SearchColumn({super.key, required this.text});

  final String text;

  @override
  State<SearchColumn> createState() => _SearchColumnState();
}

class _SearchColumnState extends State<SearchColumn> {
  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) => SearchBar(
        // todo: atur padding dan style lainnya biar sesuai dengan yang ada di desain figma,
        hintText: widget.text,
        trailing: const <Widget>[
          Icon(Icons.search),
        ],
        textStyle: WidgetStatePropertyAll(
          blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
        ),
      ),
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        return List<ListTile>.generate(
          5,
          (int index) {
            final String item = 'item $index';
            return ListTile(
              title: Text(item),
              onTap: () {
                setState(
                  () {
                    controller.closeView(item);
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
