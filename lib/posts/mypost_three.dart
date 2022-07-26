// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_tok/util/prost_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: 'createdbyAndrey',
      videoDescription: 'school ',
      numberOfLikes: '9465',
      nummberOfComments: '487',
      numberOfShares: '43',
      userPost: Container(
        color: Colors.green[100],
      ),
    );
  }
}
