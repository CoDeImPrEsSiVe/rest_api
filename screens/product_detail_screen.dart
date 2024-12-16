// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:card_swiper/card_swiper.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/consts/global_colors.dart';

class product_detail_screen extends StatefulWidget {
  const product_detail_screen({super.key});

  @override
  State<product_detail_screen> createState() => _product_detail_screenState();
}

class _product_detail_screenState extends State<product_detail_screen> {
  final titleStyle = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  // late TextEditingController _textEditingController;
  // @override
  // void initState() {
  //   _textEditingController = TextEditingController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _textEditingController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 18,
            ),
            const BackButton(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Category',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          flex: 3,
                          child: Text(
                            'Nike Sneakers',
                            textAlign: TextAlign.start,
                            style: titleStyle,
                          )),
                      Flexible(
                          flex: 1,
                          child: RichText(
                            text: TextSpan(
                                text: '\$',
                                style: const TextStyle(
                                  fontSize: 25,
                                  color: Color.fromRGBO(33, 150, 243, 1),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '168.00',
                                      style: TextStyle(
                                          color: lightTextcolor,
                                          fontWeight: FontWeight.bold))
                                ]),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.4,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return FancyShimmerImage(
                    width: double.infinity,
                    imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png",
                    boxFit: BoxFit.fill,
                  );
                },
                autoplay: true,
                itemCount: 3,
                pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.white,
                      activeColor: Colors.red,
                    )),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: titleStyle,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    'Nike sneakers is the Best of all Best',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
