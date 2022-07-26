import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_tok/posts/mypost_one.dart';
import 'package:tik_tok/posts/mypost_three.dart';
import 'package:tik_tok/posts/mypost_two.dart';

class UserHomePage extends StatelessWidget {
  UserHomePage({Key? key}) : super(key: key);

  final controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: const [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      )
    );
  }
}