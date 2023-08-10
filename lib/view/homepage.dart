import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapi_app/view/popularmovie.dart';
import 'package:movieapi_app/view/trendingslider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Api'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular',
              style: GoogleFonts.aBeeZee(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            const PopularSlider(),
            Text(
              'Trending',
              style: GoogleFonts.aBeeZee(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            const TrendingSlider(),
          ],
        ),
      ),
    );
  }
}
