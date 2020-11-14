import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main(){
  runApp(
    RegisterNotePage()
  );
}
class RegisterNotePage extends StatefulWidget {
  @override
  _RegisterNotePageState createState() => _RegisterNotePageState();
}

class _RegisterNotePageState extends State<RegisterNotePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.greenAccent,

        body: SafeArea(
          child: Column(
          children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.person),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('名前'),
                      Text('学校'),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text('ランク',style: TextStyle(
                    fontSize: 20.0

                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 140.0),
                  child: Text('順位',style: TextStyle(
                    fontSize: 20.0

                  ),),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),

              child: Image(
                image: NetworkImage('https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),

              )
            ),
          // FlatButton(onPressed: ImageUpload(), child: )



          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              height: 70.0,
              color: Colors.white,

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(

                  children: [

                    Column(
                      children: [
                        Text('教科'),
                        Icon(Icons.question_answer)
                      ],
                    ),

                    Column(
                      children: [
                        Text('単元'),
                        Icon(Icons.question_answer_outlined)
                      ],
                    ),


                  ],
                ),
              ),


            ),
          ),
          ],

      ),

        ),
      ),
    );
  }
}
//カメラ、ギャラリーからのアップロードはここでやる
class ImageUpload {
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
