import 'package:flutter/material.dart';
import 'package:movie_app/components/genre_card.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';

class Genre extends StatelessWidget {
  const Genre({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        child: SizedBox(
          height: 36,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movie.genra.length,
            itemBuilder: (context, index)=> GenreCard(genre: movie.genra[index]),
          )
        )
      ),
    );
  }
}