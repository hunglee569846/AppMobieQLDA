import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageFieldBase extends StatelessWidget {
  final String networkUrl;
  final File localUrl;
  final Function setVal;
  final bool readOnly;
  final String label;

  ImageFieldBase(
      {this.localUrl,
      this.networkUrl,
      this.setVal,
      this.readOnly = false,
      this.label});

  Future<void> _openDirectory(connext, type) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(
        source: type == 'cam' ? ImageSource.camera : ImageSource.gallery,
        maxHeight: 600.0);
    if (PickedFile != null) setVal(File(pickedFile.path));
    Navigator.of(connext).pop();
  }

  _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(label),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  child: Text('Thư viện'),
                  onPressed: () {
                    _openDirectory(context, 'lib');
                  },
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  child: Text('Máy ảnh'),
                  onPressed: () {
                    _openDirectory(context, 'cam');
                  },
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                label,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (!readOnly) _showChoiceDialog(context);
              },
              child: Stack(
                children: [
                  localUrl != null
                      ? ClipOval(
                          child: Image.file(
                            localUrl,
                            width: 120,
                            height: 120.0,
                            fit: BoxFit.cover,
                          ),
                        )
                      : ClipOval(
                          child: Image.network(
                              //urlFile const API
                              urlFile + networkUrl,
                              height: 120.0,
                              width: 120.0,
                              fit: BoxFit.cover),
                        ),
                  if (!readOnly)
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          child: Icon(
                            Icons.camera,
                            size: 30.0,
                            color: Colors.grey,
                          ),
                        ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
