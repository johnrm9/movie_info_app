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

class CastAndCrew extends StatelessWidget {
  const CastAndCrew({
    Key key,
    @required this.casts,
  }) : super(key: key);

  final List<Map<String, String>> casts;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: <Widget>[
            Text(
              'Cast & Crew',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: kDefaultPadding / 2),
            SizedBox(
              height: 160, // was 160
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: casts.length,
                itemBuilder: (BuildContext context, int index) =>
                    CastCard(cast: casts[index]),
              ),
            ),
          ],
        ));
  }
}

class CastCard extends StatelessWidget {
  const CastCard({
    Key key,
    @required this.cast,
  }) : super(key: key);

  final Map<String, String> cast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(cast['image']),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
        ],
      ),
    );
  }
}
