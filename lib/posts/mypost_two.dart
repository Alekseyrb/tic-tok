// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_tok/util/prost_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: 'createdbyObama',
      videoDescription: 'tutorial ',
      numberOfLikes: '1295',
      nummberOfComments: '512',
      numberOfShares: '81',
      userPost: Container(
        color: Colors.blue[100],
      ),
    );
  }
}
