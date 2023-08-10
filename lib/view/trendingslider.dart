import 'package:flutter/material.dart';

class TrendingSlider extends StatefulWidget {
  const TrendingSlider({
    super.key,
  });

  @override
  State<TrendingSlider> createState() => _TrendingSliderState();
}

class _TrendingSliderState extends State<TrendingSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
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
                  child: Text('hello'),
                ),
              ),
            );
          }),
    );
  }
}
