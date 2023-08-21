import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateRangePicker extends StatefulWidget {
  const DateRangePicker({super.key});

  @override
  State<DateRangePicker> createState() => _DateRangePickerState();
}

class _DateRangePickerState extends State<DateRangePicker> {
  TextEditingController dateRangeInput = TextEditingController();

  @override
  void initState() {
    dateRangeInput.text =
        '${DateFormat('yyyy/MM/dd').format(DateTime.now())} - ${DateFormat('yyyy/MM/dd').format(DateTime.now())}';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 250,
          child: TextField(
              controller: dateRangeInput, //editing controller of this TextField
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: "日期範圍" //label text of field
                  ),
              readOnly:
                  true, //set it true, so that user will not able to edit text
              onTap: () async {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => SimpleDialog(
                      contentPadding: const EdgeInsets.all(10),
                      children: [
                        SizedBox(
                          width: 700,
                          height: 400,
                          child: SfDateRangePicker(
                            enableMultiView: true,
                            selectionMode: DateRangePickerSelectionMode.range,
                            showActionButtons: true,
                            onSubmit: (Object? value) {
                              if (value == null) {
                                Navigator.pop(context);
                                return;
                              }

                              var tmp = value as PickerDateRange;
                              dateRangeInput.text =
                                  '${DateFormat('yyyy/MM/dd').format(tmp.startDate as DateTime)} - ';
                              if (tmp.endDate == null) {
                                dateRangeInput.text = dateRangeInput.text +
                                    DateFormat('yyyy/MM/dd')
                                        .format(tmp.startDate as DateTime);
                              } else {
                                dateRangeInput.text = dateRangeInput.text +
                                    DateFormat('yyyy/MM/dd')
                                        .format(tmp.endDate as DateTime);
                              }
                              Navigator.pop(context);
                            },
                            onCancel: () {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ]),
                );
              }),
        ),
      ],
    );
  }
}
