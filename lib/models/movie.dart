import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const List<String> genres = <String>[
  'Action',
  'Crime',
  'Comedy',
  'Drama',
  'Biography',
  'Horror',
  'Fantasy',
  'Animation',
];

class Movie {
  Movie({
    this.id,
    this.title,
    this.poster,
    this.backdrop,
    this.year,
    @required this.genra,
    this.criticsReview,
    this.numOfRatings,
    this.rating,
    this.metascoreRating,
    this.mpaRating = 'PG-13',
    this.runtime = '2h 32min',
    this.plot,
    this.cast,
  });

  final Uuid id;
  final int year, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final List<String> genra;
  final String plot, title, poster, backdrop, mpaRating, runtime;
  final List<Map<String, String>> cast;
}

List<Movie> movies = <Movie>[
  Movie(
    id: Uuid(),
    title: 'Bloodshot',
    year: 2020,
    poster: 'assets/images/poster_1.jpg',
    backdrop: 'assets/images/backdrop_1.jpg',
    numOfRatings: 150212,
    rating: 7.3,
    criticsReview: 50,
    metascoreRating: 76,
    genra: <String>['Action', 'Drama'],
    plot: plotText,
    cast: <Map<String, String>>[
      <String, String>{
        'orginalName': 'James Mangold',
        'movieName': 'Director',
        'image': 'assets/images/actor_1.png',
      },
      <String, String>{
        'orginalName': 'Matt Damon',
        'movieName': 'Carroll',
        'image': 'assets/images/actor_2.png',
      },
      <String, String>{
        'orginalName': 'Christian Bale',
        'movieName': 'Ken Miles',
        'image': 'assets/images/actor_3.png',
      },
      <String, String>{
        'orginalName': 'Caitriona Balfe',
        'movieName': 'Mollie',
        'image': 'assets/images/actor_4.png',
      },
    ],
  ),
  Movie(
    id: Uuid(),
    title: 'Ford v Ferrari ',
    year: 2019,
    poster: 'assets/images/poster_2.jpg',
    backdrop: 'assets/images/backdrop_2.jpg',
    numOfRatings: 150212,
    rating: 8.2,
    criticsReview: 62,
    metascoreRating: 78,
    genra: <String>['Action', 'Biography', 'Drama'],
    plot: plotText,
    cast: <Map<String, String>>[
      <String, String>{
        'orginalName': 'James Mangold',
        'movieName': 'Director',
        'image': 'assets/images/actor_1.png',
      },
      <String, String>{
        'orginalName': 'Matt Damon',
        'movieName': 'Carroll',
        'image': 'assets/images/actor_2.png',
      },
      <String, String>{
        'orginalName': 'Christian Bale',
        'movieName': 'Ken Miles',
        'image': 'assets/images/actor_3.png',
      },
      <String, String>{
        'orginalName': 'Caitriona Balfe',
        'movieName': 'Mollie',
        'image': 'assets/images/actor_4.png',
      },
    ],
  ),
  Movie(
    id: Uuid(),
    title: 'Onward',
    year: 2020,
    poster: 'assets/images/poster_3.jpg',
    backdrop: 'assets/images/backdrop_3.jpg',
    numOfRatings: 150212,
    rating: 7.6,
    criticsReview: 50,
    metascoreRating: 79,
    genra: <String>['Action', 'Drama', 'Animation', 'Fantasy'],
    plot: plotText,
    cast: <Map<String, String>>[
      <String, String>{
        'orginalName': 'James Mangold',
        'movieName': 'Director',
        'image': 'assets/images/actor_1.png',
      },
      <String, String>{
        'orginalName': 'Matt Damon',
        'movieName': 'Carroll',
        'image': 'assets/images/actor_2.png',
      },
      <String, String>{
        'orginalName': 'Christian Bale',
        'movieName': 'Ken Miles',
        'image': 'assets/images/actor_3.png',
      },
      <String, String>{
        'orginalName': 'Caitriona Balfe',
        'movieName': 'Mollie',
        'image': 'assets/images/actor_4.png',
      },
    ],
  ),
];

const String plotText = '''
American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford
to order.
''';
