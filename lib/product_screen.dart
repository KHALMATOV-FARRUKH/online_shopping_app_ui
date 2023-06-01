import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:online_shopping_app_ui/product_pop_up.dart';

class ProductScreen extends StatelessWidget {
  List<String> imageList = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
  ];

  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 420,
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    sliderHeight: 400,
                    autoPlay: false,
                    imagesLink: imageList,
                    isAssets: true,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Warm Zipper",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                              fontSize: 25),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Hooded  Jacket",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "\$309.99",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xFFE95858)),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.only(right: 4.0),
                  itemSize: 25,
                  itemBuilder: (context, _) => const Icon(
                    Icons.favorite,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                  },
                ),
                const SizedBox(height: 10),
                const Text(
                  "Coot, windy weather is on i'ts way. Send him out the door "
                  "in a jacket he wants to wear. Warm Zooper Hooded  Jacket.",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color(0x1F989797),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child:
                            Icon(Icons.shopping_cart, color: Color(0xFFE95858)),
                      ),
                    ),
                      const ProductSpecificationPopUp(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
