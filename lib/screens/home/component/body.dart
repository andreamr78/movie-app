import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/components/genre_card.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/home/component/category_list.dart';
import 'package:movie_app/screens/home/component/genre.dart';
import 'package:movie_app/screens/home/component/movie_card.dart';
import 'package:movie_app/screens/home/component/movie_carousel.dart';


class BodyHome extends StatelessWidget {
  const BodyHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}




