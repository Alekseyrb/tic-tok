// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_tok/util/button.dart';

class PostTemplate extends StatelessWidget {
  final String userName;
  final String videoDescription;
  final String numberOfLikes;
  final String nummberOfComments;
  final String numberOfShares;
  final Widget userPost;

  const PostTemplate({
    Key? key,
    required this.userName,
    required this.videoDescription,
    required this.numberOfLikes,
    required this.nummberOfComments,
    required this.numberOfShares,
    required this.userPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userPost,
          UserNameAndCaption(
            userName: userName,
            videoDescription: videoDescription,
          ),
          ButtonsLikeComm(
            numberOfLikes: numberOfLikes,
            nummberOfComments: nummberOfComments,
            numberOfShares: numberOfShares,
          ),
        ],
      ),
    );
  }
}

class UserNameAndCaption extends StatelessWidget {
  final String userName;
  final String videoDescription;

  const UserNameAndCaption({
    Key? key,
    required this.userName,
    required this.videoDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        alignment: const Alignment(-1, -1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '@$userName',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: videoDescription),
                  TextSpan(
                    text: '#flutter #dart',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonsLikeComm extends StatelessWidget {
  final String numberOfLikes;
  final String nummberOfComments;
  final String numberOfShares;

  const ButtonsLikeComm({
    Key? key,
    required this.numberOfLikes,
    required this.nummberOfComments,
    required this.numberOfShares,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        alignment: const Alignment(1, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyButton(
              icon: Icons.favorite,
              number: numberOfLikes,
            ),
            MyButton(
              icon: Icons.chat_bubble,
              number: nummberOfComments,
            ),
            MyButton(
              icon: Icons.send,
              number: numberOfShares,
            ),
          ],
        ),
      ),
    );
  }
}
