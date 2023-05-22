import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/home/component/movie_card.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({ Key? key }) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          physics: ClampingScrollPhysics(),
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMovieSlider(index)
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
    animation: _pageController,
    builder: (context, child) {
      num value = 0;
      if (_pageController.position.haveDimensions) {
        value = index - _pageController.page!;
        value = (value * 0.038).clamp(-1, 1);
      }
      return AnimatedOpacity(
        duration: Duration(milliseconds: 350),
        opacity: initialPage == index ? 1: 0.4,
        child: Transform.rotate(
          angle: math.pi * value,
          child: MovieCard(movie: movies[index])
          ),
      );
    },
  );
}
