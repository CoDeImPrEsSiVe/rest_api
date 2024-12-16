// lib/widgets/category_widget.dart

import 'package:flutter/material.dart';
import 'package:rest_api/models/catagories_model.dart';
import 'category_details_screen.dart';

class CategoryWidget extends StatelessWidget {
  final CategoriesModel category;

  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle category tap and pass the category data to CategoryDetailsScreen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryDetailsScreen(categoryName: category.name ?? ''),
          ),
        );
      },
      child: Card(
        elevation: 4.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(category.image ?? '', fit: BoxFit.cover), // Use network image
            Text(category.name ?? '', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}



// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';
// import 'package:rest_api/consts/global_colors.dart';

// class CategoryWidget extends StatelessWidget {
//   const CategoryWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         color: Colors.blue,
//         child: Stack(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: FancyShimmerImage(
//                 height: size.width * 0.45,
//                 width: size.width * 0.45,
//                 errorWidget: const Icon(
//                   IconlyBold.danger,
//                   color: Colors.red,
//                   size: 28,
//                 ),
//                 imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png",
//                 boxFit: BoxFit.fill,
//               ),
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: Text(
//                 'Category name ',
//                 textAlign: TextAlign.center,
//                 style:
//                     TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       backgroundColor: lightCardColor.withOpacity(0.5)
//                       ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
