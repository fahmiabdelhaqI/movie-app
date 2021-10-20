import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CollapsingAppBar extends StatefulWidget {
  final double expandedHeight;
  final ValueNotifier<double> collapsingAppBarNotifier;
  final double scrollDistance;
  final double paddingTopOfTitle;
  final String title;
  final String imageUrl;
  final VoidCallback onFavoritePressed;
  final bool isFavorite;

  const CollapsingAppBar({
    Key? key,
    required this.expandedHeight,
    required this.collapsingAppBarNotifier,
    required this.scrollDistance,
    required this.paddingTopOfTitle,
    required this.title,
    required this.imageUrl,
    required this.onFavoritePressed,
    this.isFavorite = false,
  }) : super(key: key);

  @override
  _CollapsingAppBarState createState() => _CollapsingAppBarState();
}

class _CollapsingAppBarState extends State<CollapsingAppBar> {
  double _topConstraint = 0.0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      brightness: Brightness.dark,
      elevation: 0.0,
      expandedHeight: widget.expandedHeight,
      floating: false,
      // title: _appBarTitle(),
      pinned: true,
      actions: [
        IconButton(
          onPressed: widget.onFavoritePressed,
          icon: FaIcon(
            widget.isFavorite
                ? FontAwesomeIcons.solidBookmark
                : FontAwesomeIcons.bookmark,
          ),
        ),
      ],
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          _topConstraint = constraints.biggest.height;
          return Stack(
            children: [
              FlexibleSpaceBar(
                background: CachedNetworkImage(
                  imageUrl: widget.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Visibility(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: widget.paddingTopOfTitle,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.0),
                        topRight: Radius.circular(24.0),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                visible: (_topConstraint >
                    MediaQuery.of(context).padding.top + kToolbarHeight),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _appBarTitle() {
    return ValueListenableBuilder(
      valueListenable: widget.collapsingAppBarNotifier,
      builder: (BuildContext context, double value, Widget? child) {
        if (value >= widget.scrollDistance) {
          return Text(
            widget.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
