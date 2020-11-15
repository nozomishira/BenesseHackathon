import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';

void main() {
  runApp(RegisterNotePage());
}

class RegisterNotePage extends StatefulWidget {
  @override
  _RegisterNotePageState createState() => _RegisterNotePageState();
}

class _RegisterNotePageState extends State<RegisterNotePage> {
  File file;

  Future<int> showCupertinoBottomBar() {
    //選択するためのボトムシートを表示
    return showCupertinoModalPopup<int>(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(
            message: Text('写真をアップロードしますか？'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text(
                  'カメラで撮影',
                ),
                onPressed: () {
                  Navigator.pop(context, 0);
                },
              ),
              CupertinoActionSheetAction(
                child: Text(
                  'アルバムから選択',
                ),
                onPressed: () {
                  Navigator.pop(context, 1);
                },
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              child: const Text('キャンセル'),
              onPressed: () {
                Navigator.pop(context, 2);
              },
              isDefaultAction: true,
            ),
          );
        });
  }

  void showBottomSheet() async {
    //ボトムシートから受け取った値によって操作を変える
    final result = await showCupertinoBottomBar();
    File imageFile;
    if (result == 0) {
      imageFile = await ImageUpload(ImageSource.camera).getImageFromDevice();
    } else if (result == 1) {
      imageFile = await ImageUpload(ImageSource.gallery).getImageFromDevice();
    }
    setState(() {
      file = imageFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[50],
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 10.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: FlatButton(
                        onPressed: null,
                        child: Text('キャンセル'),
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: FlatButton(onPressed: null, child: Text('シェアする')),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'),
                ),
              ),
              // SizedBox(height: 10.0),

              RaisedButton(child: Text('アップロード'), onPressed: showBottomSheet),
              // SizedBox(height: 60.0),
              Text('教科・単元'),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), fillColor: Colors.white24),
              ),
              // SizedBox(height:20.0),
              // Text('キャプション'
              // ),
              // TextField(
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //       fillColor: Colors.white24
              //   ),

              //)
            ],
          ),
        ),
      ),
    );
  }
//     //画像を圧縮
//     final File compressedFile = await FlutterNativeImage.compressImage(
//         imageFile.path,
//         quality: quality);
//
//     return compressedFile;
//   }
// }
}

//カメラ、ギャラリーからのアップロードはここでやる
class ImageUpload {
  var FlutterNativeImage;

  ImageUpload(this.source, {this.quality = 50});

  final ImageSource source;
  final int quality;

  Future<File> getImageFromDevice() async {
    // 撮影/選択したFileが返ってくる
    final imageFile = await ImagePicker().getImage(source: source);
    // Androidで撮影せずに閉じた場合はnullになる
    if (imageFile == null) {
      return null;
    }
    //画像を圧縮
    final File compressedFile = await FlutterNativeImage.compressImage(
        imageFile.path,
        quality: quality);

    return compressedFile;
  }
}

void showBottomSheet() {
  var context;
  showAdaptiveActionSheet(
    context: context,
    title: const Text('写真をアップロードしますか？'),
    actions: <BottomSheetAction>[
      BottomSheetAction(title: 'カメラで撮影', onPressed: () {}),
      BottomSheetAction(title: 'アルバムを起動', onPressed: () {}),
    ],
    cancelAction: CancelAction(
        title:
            'Cancel'), // onPressed parameter is optional by default will dismiss the ActionSheet
  );
}
