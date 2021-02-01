import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:helloword/view/base/text_field.dart';
import 'package:intl/intl.dart';

const format = 'dd-MM-yyyy';

class DateFieldBase extends StatelessWidget {
  final String icon;
  final DateTime val;
  final Function setVal;
  final String label;
  final bool readOnly;
  final Function validator;
  final String warningText;
  final bool isRequired;

  DateFieldBase(
      {@required this.val,
      this.icon,
      this.setVal,
      this.warningText: '',
      this.isRequired: false,
      @required this.label,
      this.readOnly: false,
      this.validator});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: !readOnly
          ? Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              // Text(
              //   label,
              //   style: TextStyle(fontWeight: FontWeight.w500),
              // ),
              // IconButton(icon: null, onPressed: null),
              Container(
                // margin: EdgeInsets.only(top: 5.0),
                child: DateTimeField(
                  validator: validator ??
                      (val) {
                        if (val == null && isRequired) return warningText;
                        return null;
                      },
                  decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      fillColor: Colors.black12,
                      filled: true),
                  format: DateFormat(format),
                  onChanged: (date) {
                    setVal(date);
                  },
                  initialValue: val,
                  onShowPicker: (context, currentValueBirthday) {
                    return showDatePicker(
                      context: context,
                      firstDate: DateTime(1900),
                      initialDate: currentValueBirthday ?? DateTime.now(),
                      lastDate: DateTime(2100),
                    );
                  },
                ),
              )
            ])
          : TextFieldBase(
              val: val == null ? '' : DateFormat('dd/MM/yyyy').format(val),
              readOnly: true,
              label: label,
            ),
    );
  }
}
