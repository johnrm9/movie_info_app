import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';
import 'backdrop_rating.dart';
import 'genres.dart';
import 'plot_summary.dart';
import 'title_duration_fav_btn.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BackdropAndRating(size: size, movie: movie),
        const SizedBox(height: kDefaultPadding / 2),
        TitleDurationAndFavBtn(movie: movie),
        Genres(movie: movie),
        PlotSummary(movie: movie),
      ],
    );
  }
}

class CastAndCrew extends StatelessWidget {
  const CastAndCrew({
    Key key,
    @required this.cast,
  }) : super(key: key);

  final List<Map<String, String>> cast;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
