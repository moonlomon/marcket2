import 'package:flutter/material.dart';
import '../../models/Product.dart';
import './components/body.dart';
import 'components/custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments = ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppbar(arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}


class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
