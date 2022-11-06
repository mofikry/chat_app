import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class VideoMeessage extends StatelessWidget {
  const VideoMeessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .45,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              child: Image.asset('assets/images/Video Place Here.png'),
              borderRadius: BorderRadius.circular(8),
            ),
            Container(
              width: 25,
              height: 25,
              decoration:
                  BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
