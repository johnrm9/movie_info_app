import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';

class PlotSummary extends StatelessWidget {
  const PlotSummary({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding,
          ),
          child: Text(
            'Plot Summary',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            movie.plot,
            style: const TextStyle(
              color: Color(0xFF737599),
            ),
          ),
        ),
      ],
    );
  }
}
