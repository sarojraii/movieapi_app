import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/model.dart';

class PopularSlider extends StatefulWidget {
  const PopularSlider({
    super.key,
  });

  @override
  State<PopularSlider> createState() => _PopularSliderState();
}

class _PopularSliderState extends State<PopularSlider> {
  List<Result>? movie = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      var response = await Dio().get(
          'https://api.themoviedb.org/3/movie/popular?key=f8aae75654842e23bf7af7f43fe3c6c2&page=1');
      if (response.statusCode == 200) {
        setState(() {
          final result = MovieApi.fromJson(response.data);

          movie = result.results;
        });
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: movie?.length ?? 0,
          itemBuilder: (context, index) {
            final results = movie?[index];
            if (movie == null) {
              return SizedBox.shrink();
            }

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadiusDirectional.circular(20),
                ),
                height: 200,
                width: 150,
                child: Center(
                  child: Text(
                    results?.originalTitle ?? '',
                    style: GoogleFonts.aBeeZee(fontSize: 15, color: Colors.red),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
