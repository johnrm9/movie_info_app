import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';
import 'genre_card.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // const List<String> genres = <String>[
    //   'Action',
    //   'Crime',
    //   'Comedy',
    //   'Drama',
    //   'Biography',
    //   'Horror',
    //   'Animation',
    // ];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (BuildContext context, int index) =>
            GenreCard(genre: genres[index]),
      ),
    );
  }
}
