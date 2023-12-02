import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:intl/intl.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

/// My app class to display the date range picker
class DatePicker extends StatefulWidget {
  final String hintText;
  final String? defaultValue;
  final bool? enabled;
  final bool? error;
  final DateTime? firstDate;
  final DateTime? lastDate;
  void Function(DateTime)? onSelect;

  DatePicker({
    Key? key,
    required this.hintText,
    this.defaultValue,
    this.enabled,
    this.error,
    this.onSelect,
    this.firstDate,
    this.lastDate,
  }) : super(key: key);

  @override
  DatePickerState createState() => DatePickerState();
}

class DatePickerState extends State<DatePicker> {
  final tFController = TextEditingController();
  DateTime? date = DateTime.now();

  @override
  void initState() {
    super.initState();
    if (widget.defaultValue != null) {
      tFController.text = widget.defaultValue!;
    }
    if (widget.defaultValue == "") {
      date = null;
    }
    tFController.addListener(() {
      if (tFController.text.length == 1) {
        tFController.selection = TextSelection.collapsed(offset: 1);
      }
      onChangeDate(tFController.text);
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    tFController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //print(" widget.error ${widget.error}");
    return Stack(
      children: <Widget>[
        TextField(
          enabled: widget.enabled,
          controller: tFController,
          keyboardType: TextInputType.number,
          inputFormatters: [
            // FilteringTextInputFormatter.allow(RegExp(r'\d+|-|/')),
            // DateInputFormatter(),
            MaskedInputFormatter('##/##/####'),
          ],
          onTap: () {
            tFController.selection = TextSelection(
              baseOffset: 0,
              extentOffset: tFController.text.length,
            );
          },
          //readOnly: true,
          decoration: textFieldStyle(
            hintText: widget.hintText,
            icon: Icons.calendar_month,
            onIconClick: showPiker,
            error: widget.error != null ? widget.error! : false,
          ),
        ),
      ],
    );
  }

  void showPiker() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return FractionallySizedBox(
              heightFactor: 0.65,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        CalendarDatePicker2(
                          config: CalendarDatePicker2Config(
                            calendarType: CalendarDatePicker2Type.single,
                            firstDate: widget.firstDate,
                            lastDate: widget.lastDate,
                          ),
                          initialValue: [date],
                          onValueChanged: (dates) {
                            onSelectDate(dates);
                            Navigator.pop(context);
                          },
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: buttonSoft,
                                onPressed: () {
                                  // if (widget.defaultValue == "") {
                                  //   onSelectDate([date]);
                                  // }
                                  Navigator.pop(context);
                                },
                                child: const Text('Retour'),
                              ),
                            ),
                          ],
                        ),
                        HSeparator(10),
                      ],
                    )),
              ));
        });
  }

  void onSelectDate(List<DateTime?> dates) {
    if (dates.length > 0) {
      DateTime date = dates.first!;
      tFController.text = DateFormat('dd/MM/yyyy').format(date);
      if (widget.onSelect != null) widget.onSelect!(date);
    }
  }

  void onChangeDate(String dateString) {
    try {
      if (dateString.length == 10) {
        DateTime _date = new DateFormat("dd/MM/yyyy").parse(dateString);
        setState(() {
          date = _date;
        });
        if (widget.onSelect != null) widget.onSelect!(_date);
      }
    } catch (e) {}
  }
}
