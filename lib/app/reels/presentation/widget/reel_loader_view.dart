import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ReelLoaderView extends StatelessWidget {
  const ReelLoaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade900,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(child: SizedBox()),
          Row(
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey.shade800,
                highlightColor: Colors.grey.shade700,
                child: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 12,),
              Shimmer.fromColors(
                baseColor: Colors.grey.shade800,
                highlightColor: Colors.grey.shade700,
                child: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 8,
                    width: 120,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 8,),
          Shimmer.fromColors(
            baseColor: Colors.grey.shade800,
            highlightColor: Colors.grey.shade700,
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 12,
                width: 200,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 4,),
          Shimmer.fromColors(
            baseColor: Colors.grey.shade800,
            highlightColor: Colors.grey.shade700,
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 12,
                width: 140,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 32,)
        ],
      ),
    );
  }
}
