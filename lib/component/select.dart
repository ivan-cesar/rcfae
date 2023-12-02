import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/utils/list.dart';
import 'package:cgrae_enrollment/component/select_list.dart';

class SelectField extends StatefulWidget {
  final String hintText;
  List<Option> items = [];
  final String? defaultValue;
  final bool? enabled;
  final bool? error;
  void Function(Option)? onSelect;

  SelectField({
    Key? key,
    required this.hintText,
    required this.items,
    this.defaultValue,
    this.enabled,
    this.error,
    this.onSelect,
  }) : super(key: key);

  @override
  SelectFieldState createState() => SelectFieldState();
}

class SelectFieldState extends State<SelectField> {
  final tFController = TextEditingController();
  String defaultValue = "";

  @override
  void initState() {
    setDefaultValue(widget.defaultValue!);
    fill();
    super.initState();
  }

  @override
  void dispose() {
    tFController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        TextField(
          enabled: widget.enabled,
          controller: tFController,
          readOnly: true,
          decoration: textFieldStyle(
            hintText: widget.hintText,
            icon: Icons.arrow_drop_down_circle,
            error: widget.error != null ? widget.error! : false,
          ),
          onTap: () {
            showPiker();
          },
        ),
      ],
    );
  }

  void showPiker() {
    fill();

    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          double height = MediaQuery.of(context).size.height;

          return FractionallySizedBox(
            heightFactor: 0.80,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 80, top: 0),
                      child: SelectList(
                        items: widget.items,
                        defaultValue: defaultValue,
                        onSelect: onSelect,
                      ),
                    ),
                    Positioned.fill(
                      top: height - 280,
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: buttonSoft,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Fermer'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          );
        });
  }

  void fill() {
    try {
      Option option = widget.items
          .firstWhere((element) => element.value == widget.defaultValue!);
      tFController.text = option.title;
      setDefaultValue(option.value);
    } catch (e) {}
  }

  void onSelect(Option option) {
    if (widget.onSelect != null) widget.onSelect!(option);
    tFController.text = option.title;
    setDefaultValue(option.value);
  }

  void setDefaultValue(String value) {
    setState(() {
      defaultValue = value;
    });
  }
}
