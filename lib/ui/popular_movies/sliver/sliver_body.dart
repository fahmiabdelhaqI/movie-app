import 'package:flutter/material.dart';

class SliverBody extends StatelessWidget {
  final EdgeInsets padding;
  final Widget child;

  const SliverBody({
    Key? key,
    this.padding = const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding,
      sliver: SliverToBoxAdapter(
        child: Scrollbar(
          child: child,
        ),
      ),
    );
  }
}
