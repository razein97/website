import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:website/data_models/navigation_bar_item_model.dart';
import 'package:website/extensions/hover_extensions.dart';
import 'package:website/helpers/sizes_helpers.dart';

class NavigationBarItemDesktop extends StatelessWidget {
  final double fontSize;
  final NavigationBarItemModel model;
  NavigationBarItemDesktop({this.model, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeHelper.displayHeight,
      child: FlatButton(
        onPressed: () {
          ExtendedNavigator.of(context).pushNamed(model.routePath);
        },
        child: Text(
          model.title,
          style: TextStyle(
              fontSize: SizeHelper.displayHeight * fontSize,
              color: Colors.white),
        ),
      ).showCursorOnHover,
    );
  }
}
