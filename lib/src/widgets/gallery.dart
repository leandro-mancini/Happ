import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HappGallery extends StatelessWidget {
  final dynamic template;

  HappGallery({
    this.template
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Swiper(
        itemCount: 10,
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return template;
        },
      ),
    );
  }
}