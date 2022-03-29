import 'package:flutter/cupertino.dart';

class ItemImage extends StatelessWidget {
  final String imageSrc;
  const ItemImage({
    Key? key,
    required this.imageSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Image(
      height: size.height * 0.25,
      width: double.infinity,
      fit: BoxFit.fill,
      image: AssetImage(imageSrc),
    );
  }
}
