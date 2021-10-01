import 'package:flutter/material.dart';
import 'package:movie_apps/values/textstyle.dart';
import 'package:readmore/readmore.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Hackaton',
            style: text15,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ReadMoreText(
            'Needing to make 90k to open her own business, Seo Dal-Mi drops out of a university and takes up part-time work. She dreams of becoming someone like Steve Jobs Nam Do-San is the founder of Samsan Tech. He is excellent with mathematics. He started Samsan Tech two years ago, but the company is not doing well. Somehow, Nam Do-San becomes Seo Dal-Mi first love. They cheer each others start and growth',
            style: text13,
            trimLines: 3,
            colorClickableText: Colors.blue,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
            trimExpandedText: ' Less',
          ),
        ),
      ],
    );
  }
}
