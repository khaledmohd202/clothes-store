import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/models/home_model.dart';
import 'package:clothes_store/screens/product_screen/product_screen.dart';
import 'package:flutter/material.dart';

class NewProducts extends StatelessWidget {
  const NewProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productTitle.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.5,
        crossAxisSpacing: 3,
      ),
      itemBuilder: (context, index) {
        // ignore: sized_box_for_whitespace
        return Container(
          width: 150,
          child: Column(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ProductScreen.routeName);
                    // Navigator.pushNamed(
                    //   context,
                    //   ProductDetailsScreen.routeName,
                    //   arguments: ProductDetailsArguments(
                    //     image: imageList[index],
                    //     title: productTitle[index],
                    //     price: productPrice[index],
                    //     reviews: reviews[index],
                    //   ),
                    // );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                productTitle[index],
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                productPrice[index],
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kSecondaryColor,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
