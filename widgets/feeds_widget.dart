import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';

import 'package:rest_api/consts/global_colors.dart';
import 'package:rest_api/screens/product_detail_screen.dart';

class Feedwidget extends StatelessWidget {
  const Feedwidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Material(
          borderRadius: BorderRadius.circular(8.0),
          color: Theme.of(context).cardColor,
          child: InkWell(
            borderRadius: BorderRadius.circular(8.0),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const product_detail_screen(),
                  ));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                              text: '\$',
                              style: const TextStyle(
                                color: Color.fromRGBO(33, 150, 243, 1),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '168.00',
                                    style: TextStyle(
                                        color: lightTextcolor,
                                        fontWeight: FontWeight.w600))
                              ]),
                        ),
                      ),
                      const Icon(
                        IconlyBold.heart,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FancyShimmerImage(
                    height: size.height * 0.2,
                    width: double.infinity,
                    errorWidget: const Icon(
                      IconlyBold.danger,
                      color: Colors.red,
                      size: 28,
                    ),
                    imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png",
                    boxFit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Title',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                )
              ],
            ),
          ),
        ));
  }
}
