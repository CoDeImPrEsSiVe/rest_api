import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:rest_api/consts/global_colors.dart';

class UsersWidget extends StatelessWidget {
  const UsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListTile(
      leading: FancyShimmerImage(
        height: size.width * 0.15,
        width: size.width * 0.15,
        errorWidget: const Icon(
          IconlyBold.danger,
          color: Colors.red,
          size: 28,
        ),
        imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png",
        boxFit: BoxFit.fill,
      ),
      title: const Text('User Name'),
      subtitle: const Text('Email@email.com'),
      trailing: Text(
        'User role',
        style: TextStyle(color: lightIconscolor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
