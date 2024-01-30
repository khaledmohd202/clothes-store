import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/models/home_model.dart';
import 'package:clothes_store/screens/product_screen/widgets/product_quantity.dart';
import 'package:clothes_store/widgets/product_details_popup.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  static String routeName = 'ProductScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.transparent,
        foregroundColor: kSecondaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: kMediaQueryHeight(context) * 0.54, //480
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    sliderHeight: MediaQuery.of(context).size.height * 0.5,
                    imagesLink: imageList,
                    autoPlay: false,
                    isAssets: true,
                  ),
                ),
                kSizedBoxH20,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product Name',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '\$Price',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
                kSizedBoxH20,
                RatingBar.builder(
                  initialRating: 3.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 35,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber[600],
                  ),
                  onRatingUpdate: (rating) {},
                ),
                kSizedBoxH10,
                const Text(
                  'Winter coats are essential for keeping the body warm in cold temperatures. They come in various styles such as parkas, puffers, and wool coats. Many winter coats are insulated with materials like down or synthetic fibers to provide thermal insulation',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                kSizedBoxH10,
                const ProductQuantity(),
                kSizedBoxH20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: kSecondaryColor,
                          size: 35,
                        ),
                      ),
                    ),
                    const ProductDetailsPopup(),
                  ],
                ),
                kSizedBoxH10,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
