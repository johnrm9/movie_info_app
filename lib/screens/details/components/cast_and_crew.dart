import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'cast_card.dart';

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
            const SizedBox(height: kDefaultPadding),
            SizedBox(
              height: 160,
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
