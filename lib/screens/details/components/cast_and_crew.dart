import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/details/components/cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final List casts; 
  const CastAndCrew({ Key? key, required this.casts }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Cast & Crew",
              style:  Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) => CastCard(cast: casts[index],)
            ),
          )
        ],
      ),
    );
  }
}