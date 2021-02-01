import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:helloword/view/base/date_field.dart';
import 'package:helloword/view/base/text_field.dart';

class customer_info extends StatelessWidget {
  String value;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEEACAD),
        toolbarHeight: 200.0,
        title: Center(
          child: Container(
            width: 120.0,
            height: 120.0,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xFFEEF1F3)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: null,
                  ),
                  Text('Họ & Tên'),
                ],
              ),
              // TextFieldBase(
              //   pattern: validateName,
              //    warningText: "Tên không hợp lệ",
              //             label: "Họ và tên",
              //             val: data.currentUser['fullName'],
              //             readOnly: true,
              //),
              TextField(
                onChanged: (text) {
                  value = text;
                },
                autofocus: true,

                //cursorHeight: 20.0,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                ),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: null,
                  ),
                  Text('Ngày sinh'),
                ],
              ),
              DateFieldBase(
                val: DateTime(2021),
                label: '',
                readOnly: false,
              ),
              // TextField(
              //   autofocus: true,
              //   //cursorHeight: 20.0,
              //   decoration: InputDecoration(
              //     filled: true,
              //     fillColor: Color(0xFFF3F3F3),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10.0),
              //     ),
              //     isDense: true,
              //     contentPadding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
              //   ),
              // ),

              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.supervised_user_circle_rounded),
                    onPressed: null,
                  ),
                  Text('Giới tính'),
                ],
              ),
              TextField(
                autofocus: true,
                //cursorHeight: 20.0,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                ),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.phone_android),
                    onPressed: null,
                  ),
                  Text('Số điện thoại'),
                ],
              ),
              TextField(
                autofocus: true,
                //cursorHeight: 20.0,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                ),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.email),
                    onPressed: null,
                  ),
                  Text('Email'),
                ],
              ),
              TextField(
                autofocus: true,
                //cursorHeight: 20.0,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                  hintText: 'name@gmail.com',
                ),
              ),
              const SizedBox(height: 30.0),
              Center(
                child: RaisedButton(
                  autofocus: true,
                  onPressed: () {
                    print(value);
                  },
                  child: Text('Cập nhập'),
                  color: Color(0xFFEEACAD),
                  padding: EdgeInsets.only(left: 100.0, right: 100.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
