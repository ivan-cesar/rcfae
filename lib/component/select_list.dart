import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/utils/list.dart';
import 'package:diacritic/diacritic.dart';
import 'dart:async';

class SelectList extends StatefulWidget {
  final List<Option> items;
  final String? defaultValue;
  void Function(Option)? onSelect;

  SelectList({
    Key? key,
    required this.items,
    this.defaultValue,
    this.onSelect,
  }) : super(key: key);

  @override
  SelectListState createState() => SelectListState();
}

class SelectListState extends State<SelectList> {
  final searchCtl = TextEditingController();
  late String? _selected;
  List<Option> list = [];

  @override
  void initState() {
    super.initState();

    setState(() {
      _selected = widget.defaultValue;
      list = widget.items;
    });

    searchCtl.addListener(() {
      setState(() {
        String _text = RegExp.escape(searchCtl.text) ;
        RegExp nameExp =
            new RegExp(r'^.*' + _text + r'.*$', caseSensitive: false);

        List<Option> list1 = widget.items
            .where(
                (element) => nameExp.hasMatch(removeDiacritics(element.title)))
            .toList();

        List<Option> list2 = widget.items
            .where(
                (element) => nameExp.hasMatch(removeDiacritics(element.sTitle)))
            .toList();

        list = [list1, list2].expand((x) => x).toList();

        // list = widget.items
        //     .where(
        //         (element) => nameExp.hasMatch(removeDiacritics(element.title)))
        //     .toList();
      });
    });
  }

  @override
  void dispose() {
    searchCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          controller: searchCtl,
          decoration: textFieldStyle(
            hintText: "Rechercher",
            icon: Icons.search,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 70),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              final item = list[index];
              return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                          _selected == item.value ? AppColors.softGreen : null),
                  child: ListTile(
                    selected: _selected == item.value,
                    selectedColor: AppColors.primarySwatch,
                    title: item.buildTitle(context),
                    subtitle: item.buildSubtitle(context),
                    onTap: () {
                      selectOne(item);
                    },
                  ));
            },
          ),
        )
      ],
    );
  }

  void selectOne(Option _select) {
    setState(() {
      _selected = _select.value;
    });

    if (widget.onSelect != null) widget.onSelect!(_select);

    Timer.periodic(const Duration(milliseconds: 100), (t) {
      Navigator.pop(context);
      t.cancel();
    });
  }
}
