import 'package:flutter/material.dart';

class ProductFormat {
  final String name, item_image, description;
  final double price;
  final Color container_color, icon_color;

  ProductFormat({
    required this.name,
    required this.item_image,
    required this.description,
    required this.price,
    required this.container_color,
    required this.icon_color,
  });
}

List<ProductFormat> productDetails = [
  ProductFormat(
    name: 'Ice Cream cerry',
    item_image: 'assets/icecream.jpg',
    price: 12,
    container_color: const Color(0xffC38F7B),
    icon_color: Colors.yellow,
    description:
        'This is an Ice Cream Cherry, lurem ipsum lurem ipsum lurem ipsum lurem ipsum',
  ),
  ProductFormat(
    name: 'Red Velvet Cream',
    item_image: 'assets/redvelvet.jpeg',
    price: 16,
    container_color: const Color(0xffF9B296),
    icon_color: Colors.yellow,
    description:
        'Butter Cake Red Velvet coated with light cream choose with red velvet crumble',
  ),
  ProductFormat(
    name: 'Ice Cream berry',
    item_image: 'assets/icecream2.jpg',
    price: 20,
    container_color: const Color(0x7CB9600C),
    icon_color: Colors.yellow,
    description:
        'Cake spiced with the cream and chocolate, Cake spiced with the cream and chocolate,',
  ),
];
