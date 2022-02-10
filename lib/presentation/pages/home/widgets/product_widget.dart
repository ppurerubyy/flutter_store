import 'package:flutter/material.dart';
import 'package:shop/data/models/product.dart';
import 'package:sprintf/sprintf.dart';

class ProductItemParams {
  final double countCardRadius;
  final EdgeInsets ratingContainerContentPadding;
  final EdgeInsets rateContainerContentPadding;
  final double dividerHeight;
  final EdgeInsets dividerPadding;
  final EdgeInsets additionalDescriptionPadding;
  final EdgeInsets buyButtonPadding;
  final double rateContainerPaddingRight;
  final EdgeInsets productDescriptionPadding;
  final EdgeInsets pricePadding;

  const ProductItemParams({
    this.countCardRadius = 5,
    this.ratingContainerContentPadding = const EdgeInsets.all(3),
    this.rateContainerContentPadding = const EdgeInsets.all(8),
    this.dividerHeight = 2,
    this.dividerPadding = const EdgeInsets.only(top: 10),
    this.rateContainerPaddingRight = 5,
    this.pricePadding = const EdgeInsets.symmetric(vertical: 5),
    this.productDescriptionPadding = const EdgeInsets.only(bottom: 10),
    this.additionalDescriptionPadding = const EdgeInsets.symmetric(vertical: 5),
    this.buyButtonPadding = const EdgeInsets.all(10.0),
  });
}

class ProductItemTheme {
  final Color buyButtonColor;
  final Color countContainerColor;
  final Color dividerColor;
  final Color rateContainerColor;
  final TextStyle productTitleTextStyle;
  final TextStyle productDescriptionTextStyle;
  final TextStyle categoryTextStyle;
  final TextStyle ratingDataTextStyle;
  final TextStyle priceTextStyle;

  const ProductItemTheme({
    this.buyButtonColor = Colors.black,
    this.countContainerColor = Colors.black26,
    this.dividerColor = Colors.black,
    this.rateContainerColor = Colors.black,
    this.productTitleTextStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    this.productDescriptionTextStyle = const TextStyle(overflow: TextOverflow.ellipsis),
    this.categoryTextStyle = const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.w900,
        fontSize: 12),
    this.priceTextStyle = const TextStyle(fontSize: 12),
    this.ratingDataTextStyle = const TextStyle(color: Colors.white, fontSize: 12),
  });
}

class ProductWidget extends StatelessWidget {
  final Product item;
  final ProductItemParams params;
  final ProductItemTheme theme;

  const ProductWidget({
    Key? key,
    required this.item,
    this.theme = const ProductItemTheme(),
    this.params = const ProductItemParams(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: Alignment.center, children: [
          SizedBox(
            height: 280.0,
            width: 220.0,
            child: Image.network(
              item.image,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: _buyInfo(item),
          ),
        ]),
        _additionalDescription(item),
        _productDescription(item),
        Padding(
          padding: params.dividerPadding,
          child: Divider(
            height: params.dividerHeight,
            color: theme.dividerColor,
          ),
        ),
      ],
    );
  }

  Widget _additionalDescription(Product item) {
    return Padding(
      padding: params.additionalDescriptionPadding,
      child: Row(
        children: [
          Expanded(
            child: Text(
              item.category,
              style: theme.categoryTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: params.rateContainerPaddingRight),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: theme.rateContainerColor),
              child: Padding(
                padding: params.rateContainerContentPadding,
                child: Text(
                  item.rating.rate.toString(),
                  style: theme.ratingDataTextStyle,
                ),
              ),
            ),
          ),
          Container(
            padding: params.ratingContainerContentPadding,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: theme.countContainerColor,
              borderRadius: BorderRadius.all(
                Radius.circular(params.countCardRadius),
              ),
            ),
            child: Text(
              item.rating.count.toString(),
              style: theme.ratingDataTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _productDescription(Product item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: params.productDescriptionPadding,
          child: Text(
            item.title,
            style: theme.productTitleTextStyle,
          ),
        ),
        Text(
          item.description,
          style: theme.productDescriptionTextStyle,
          maxLines: 3,
        )
      ],
    );
  }

  Widget _buyInfo(Product item) {
    return Column(children: [
      Text(
        "FROM",
        style:  theme.priceTextStyle.copyWith(fontWeight: FontWeight.w900),
      ),
      Padding(
        padding: params.pricePadding,
        child: Text(
          sprintf("\$%s", [item.price.toString()]),
          style: theme.priceTextStyle,
        ),
      ),
      RawMaterialButton(
        onPressed: () {},
        elevation: 0.0,
        fillColor: theme.buyButtonColor,
        child: const Icon(
          Icons.shopping_cart_outlined,
          size: 25.0,
          color: Colors.white,
        ),
        padding: params.buyButtonPadding,
        shape: const CircleBorder(),
      ),
    ]);
  }
}
