// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_tok/util/prost_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: 'createdbyAleksey',
      videoDescription: 'tiktok ui ',
      numberOfLikes: '1.2M',
      nummberOfComments: '4312',
      numberOfShares: '781',
      userPost: Container(
        color: Colors.deepPurple[100],
      ),
    );
  }
}
