import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rest_api/consts/global_colors.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:rest_api/screens/categories_screen.dart';
import 'package:rest_api/screens/feeds_screen.dart';
import 'package:rest_api/screens/users_screen.dart';
import 'package:rest_api/services/api_handler.dart';
import 'package:rest_api/widgets/feeds_widget.dart';
import 'package:rest_api/widgets/sale_widget.dart';

import 'appbar_icon.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    APIHandler.getAllProduct();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('Home'),
            leading: AppbarWidget(
                function: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: const CategoriesScreen(),
                        type: PageTransitionType.fade),
                  );
                },
                icon: IconlyBold.category),
            actions: [
              AppbarWidget(
                  function: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          child: const UserScreen(),
                          type: PageTransitionType.fade),
                    );
                  },
                  icon: IconlyBold.user3)
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: _textEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Search here',
                    filled: true,
                    fillColor: Theme.of(context).cardColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Theme.of(context).cardColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    suffixIcon:
                        Icon(IconlyLight.search, color: lightIconscolor),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.25,
                        child: Swiper(
                          itemCount: 3,
                          itemBuilder: (ctx, index) {
                            return const SaleWidget();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text(
                              'Latest Product',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const Spacer(),
                            AppbarWidget(
                              function: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: const FeedScreen(),
                                        type: PageTransitionType.fade));
                              },
                              icon: IconlyBold.arrowRight2,
                            ),
                          ],
                        ),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0.0,
                          mainAxisSpacing: 0.0,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (ctx, index) {
                          return const Feedwidget();
                        },
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ));
  }
}
