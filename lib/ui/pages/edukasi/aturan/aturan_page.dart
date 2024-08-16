import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/edukasi/aturan/uu_class.dart';
import 'package:flutter_app/models/pages/edukasi/aturan/uu_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:flutter_app/ui/widgets/button/button_primary.dart';
import 'package:flutter_app/ui/widgets/input/search_column.dart';
import 'package:flutter_app/ui/widgets/text/text_black_m_20.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

// data UU
final controller = UuItems();

class AturanPage extends StatefulWidget {
  const AturanPage({super.key});

  @override
  State<AturanPage> createState() => _AturanPageState();
}

class _AturanPageState extends State<AturanPage> {
  List<UuClass> _foundedUU = [];

  @override
  void initState(){
    super.initState();
    setState(() {
      _foundedUU = controller.items;
    });
  }

  void _onSearch(String value){
    setState(() {
      _foundedUU = controller.items.where((uu) => uu.title.toLowerCase().contains(value)).toList();
    });
  }

  Widget buildContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: Column(
        children: [
          // Header section
          Container(
            padding: EdgeInsets.only(top: defaultMargin),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextBlackM20(text: 'Cari Peraturan \nPerundang-undangan'),
                const Gap(12),
                SearchColumn(text: 'Lalu Lintas', onSearch: _onSearch,),
                Gap(defaultMargin),
              ],
            ),
          ),
          // body section
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => GestureDetector(
                onTap: (){
                  launchUrl(Uri.parse(_foundedUU[index].url));
                },
                child: ListTile(
                  title: Text(
                    _foundedUU[index].title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
                  tileColor: kPrimaryColor,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                ),
              ),
              separatorBuilder: (context, index) => Gap(defaultMargin),
              itemCount: _foundedUU.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
            ),
          ),
        //   bottom space
          const Gap(100),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // keep bottomSheet in position
      appBar: customBackNavigationAppBar(context: context, title: 'Peraturan'),
      body: buildContent(context),
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin,vertical: 15),
        child: buttonPrimary(onPressed: (){Navigator.of(context).pop();}, text: 'Kembali'),
      ),
    );
  }
}
