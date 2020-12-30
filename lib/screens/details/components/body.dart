import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';
import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(size: size, movie: movie),
          const SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFavBtn(movie: movie),
          Genres(movie: movie),
          PlotSummary(movie: movie),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
