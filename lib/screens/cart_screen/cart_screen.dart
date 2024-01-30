import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/models/home_model.dart';
import 'package:clothes_store/screens/payment_method_screen/payment_method_screen.dart';
import 'package:clothes_store/widgets/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = 'CartScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart Screen',
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
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            activeColor: kSecondaryColor,
                            value: true,
                            onChanged: (value) {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imageList[index],
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          kSizedBoxW10,
                          Column(
                            children: [
                              Text(
                                productTitle[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              const Text(
                                'Hooded Jacket',
                                // kSizedBoxH10,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              kSizedBoxH10,
                              Text(
                                productPrice[index],
                                style: const TextStyle(
                                  color: kSecondaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                iconSize: 15,
                              ),
                              const Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                iconSize: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              kSizedBoxH20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Select All',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Checkbox(
                    value: true,
                    activeColor: kSecondaryColor,
                    onChanged: (value) {},
                  ),
                ],
              ),
              kDivider20,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '\$1150.00',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: kSecondaryColor,
                    ),
                  ),
                ],
              ),
              kSizedBoxH10,
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, PaymentMethodScreen.routeName);
                },
                child: ContainerButtonModal(
                  text: 'Checkout',
                  color: kSecondaryColor,
                  containerWidth: MediaQuery.of(context).size.width,
                ),
              ),
              kSizedBoxH10,
            ],
          ),
        ),
      ),
    );
  }
}
