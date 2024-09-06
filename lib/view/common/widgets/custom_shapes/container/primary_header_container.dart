import 'package:flutter/cupertino.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';


class CustomPrimaryHeaderContainer extends StatelessWidget {
  const CustomPrimaryHeaderContainer({
    super.key,
    required this.child,
    this.topHeight,
    this.headerHeight,
    this.color,
    this.isCircular = true,
  });
  final Widget child;

  final double? headerHeight;

  final double? topHeight;
  final Color? color;
  final bool isCircular;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
        color: color,
        headerHeight: headerHeight,
        isCircular: isCircular,
        child: child);
  }
}


