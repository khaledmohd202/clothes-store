import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/models/home_model.dart';
import 'package:clothes_store/screens/cart_screen/cart_screen.dart';
import 'package:clothes_store/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class ProductDetailsPopup extends StatelessWidget {
  const ProductDetailsPopup({super.key});
  final iStyle = const TextStyle(
    color: Colors.black87,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) {
            return Container(
              height: kMediaQueryHeight(context) / 2.49, // * 0.5
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Size: ',
                              style: iStyle,
                            ),
                            kSizedBoxH20,
                            Text(
                              'Color: ',
                              style: iStyle,
                            ),
                            kSizedBoxH20,
                            Text(
                              'Total: ',
                              style: iStyle,
                            ),
                            kSizedBoxH20,
                          ],
                        ),
                        kSizedBoxW30,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'S',
                                  style: iStyle,
                                ),
                                kSizedBoxW20,
                                Text(
                                  'M',
                                  style: iStyle,
                                ),
                                kSizedBoxW20,
                                Text(
                                  'L',
                                  style: iStyle,
                                ),
                                kSizedBoxW20,
                                Text(
                                  'XL',
                                  style: iStyle,
                                ),
                                kSizedBoxW20,
                                Text(
                                  'XXL',
                                  style: iStyle,
                                ),
                                kSizedBoxW20,
                              ],
                            ),
                            kSizedBoxH20,
                            Row(
                              children: [
                                for (var i = 0;
                                    i < productColors.length / 3;
                                    i++)
                                  Container(
                                    height: 30,
                                    width: 30,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    decoration: BoxDecoration(
                                      color: productColors[i],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                              ],
                            ),
                            kSizedBoxH20,
                            Row(
                              children: [
                                kSizedBoxW10,
                                Text(
                                  '-',
                                  style: iStyle,
                                ),
                                kSizedBoxW30,
                                Text(
                                  '1',
                                  style: iStyle,
                                ),
                                kSizedBoxW30,
                                Text(
                                  '+',
                                  style: iStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    kSizedBoxH10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Payment: ',
                          style: iStyle,
                        ),
                        const Text(
                          '\$300',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    kSizedBoxH20,
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const CartScreen();
                        },));
                      },
                      child: ContainerButtonModal(
                        containerWidth: kMediaQueryWidth(context),
                        text: 'Checkout',
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: ContainerButtonModal(
        containerWidth: kMediaQueryWidth(context) / 1.35,
        text: 'Add to Cart',
        color: kSecondaryColor,
      ),
    );
  }
}
