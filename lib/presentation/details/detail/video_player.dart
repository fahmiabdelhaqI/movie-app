import 'package:flutter/material.dart';

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: NetworkImage(
                  'https://www.ordinaryreviews.com/wp-content/uploads/2020/10/episode-5-preview-start-up.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 160,
          child: ElevatedButton(
            onPressed: () {},
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              primary: Colors.red.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}
