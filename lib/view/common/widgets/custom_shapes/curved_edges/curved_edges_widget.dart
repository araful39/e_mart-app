

import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/circular_container.dart';

import 'curved_edges.dart';
class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
    required this.color,
    required this.headerHeight,
    required this.isCircular,
    required this.child,
  });

  final Color? color;
  final double? headerHeight;
  final bool isCircular;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: Container(
        width: double.infinity,
        color: color ?? AppColores.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: headerHeight ?? 288,
          child: Stack(
            children: [
              isCircular
                  ? Positioned(
                top: -100,
                right: -200,
                child: CustomCircularContainer(
                  height: 220,
                  radius: 200,
                  backgroundColor: AppColores.white.withOpacity(0.2),
                  padding: 0,
                ),
              )
                  : const SizedBox(),
              isCircular
                  ? Positioned(
                bottom: 10,
                right: -200,
                child: CustomCircularContainer(
                  height: 220,
                  radius: 200,
                  backgroundColor: AppColores.white.withOpacity(0.2),
                  padding: 0,
                ),
              )
                  : const SizedBox(),
              child
            ],
          ),
        ),
      ),
    );
  }
}