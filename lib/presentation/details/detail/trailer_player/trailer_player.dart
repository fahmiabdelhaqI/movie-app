import 'package:flutter/material.dart';

class TrailerPlayer extends StatelessWidget {
  const TrailerPlayer({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  final String imageUrls;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 230,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(
                        imageUrls,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  primary: Colors.red.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 230,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(
                        imageUrls,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  primary: Colors.red.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 230,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(
                        imageUrls,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  primary: Colors.red.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
