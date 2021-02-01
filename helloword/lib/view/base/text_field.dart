import 'package:flutter/material.dart';

class TextFieldBase extends StatelessWidget {
  final String val;
  final Function setVal;
  final String label;
  final bool readOnly;
  final Pattern pattern;
  final String warningText;
  final String hintText;
  final int maxLines;
  final bool isRequired;
  final showCleartButton;

  TextFieldBase(
      {this.hintText: '',
      this.showCleartButton: false,
      this.label,
      this.isRequired: false,
      this.val,
      this.setVal,
      this.readOnly: false,
      this.pattern,
      this.warningText: '',
      this.maxLines: 1});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: TextFormField(
              maxLines: maxLines,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (isRequired && value.isEmpty) return warningText;
                if (pattern == null) return null;
                RegExp regex = RegExp(pattern);
                if (!regex.hasMatch(value.trim()))
                  return warningText != null ? warningText : 'invarlid';
                else
                  return null;
              },
              readOnly: readOnly,
              decoration: InputDecoration(
                  suffixIcon: showCleartButton
                      ? IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: readOnly ? null : () => setVal(""),
                        )
                      : null,
                  hintText: hintText,
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
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
              initialValue: val,
              onChanged: (text) {
                setVal(text);
              },
              autofocus: false,
              keyboardType: TextInputType.text,
            ),
          )
        ],
      ),
    );
  }
}
