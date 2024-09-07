import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CircularProfileImage extends StatelessWidget {
  final String? imageUrl;
  final IconData placeHolderIcon;
  final double size;

  const CircularProfileImage(
      {super.key,
      this.imageUrl,
      this.placeHolderIcon = IconsaxPlusBold.profile,
      this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(40),
      child: imageUrl != null
          ? CachedNetworkImage(
              imageUrl: imageUrl!,
              height: size,
              width: size,
              fit: BoxFit.cover,
              placeholder: (context, string) {
                return Container(
                  color: Colors.grey.shade300,
                  height: size,
                  width: size,
                  child: Icon(
                    placeHolderIcon,
                    color: Colors.white,
                  ),
                );
              },
              errorWidget: (context, url, error) {
                return Container(
                  color: Colors.grey.shade300,
                  height: size,
                  width: size,
                  child: Icon(
                    placeHolderIcon,
                    color: Colors.white,
                  ),
                );
              },
            )
          : Container(
              color: Colors.grey.shade300,
              height: 40,
              width: 40,
              child: Icon(
                placeHolderIcon,
                color: Colors.white,
              ),
            ),
    );
  }
}
