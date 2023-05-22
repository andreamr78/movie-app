import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/details/components/backdrop_rating.dart';
import 'package:movie_app/screens/details/components/cast_and_crew.dart';
import 'package:movie_app/screens/details/components/genre.dart';
import 'package:movie_app/screens/details/components/title_duration.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({ Key? key, required this.movie }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleDuration(movie: movie),
          Genre(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Plot Summary",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(movie.plot,
            style: TextStyle(
              color: Color(0xFF737599)
            ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}








