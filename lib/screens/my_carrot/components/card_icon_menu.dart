import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/icon_menu.dart';
import 'package:flutter_application_1/theme.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenuList;
  const CardIconMenu({super.key, required this.iconMenuList});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: List.generate(
            iconMenuList.length,
            (index) => _buildRowIconItem(
              iconMenuList[index].title,
              iconMenuList[index].iconData,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Icon(
            iconData,
            size: 17,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: textTheme().subtitle1,
          )
        ],
      ),
    );
  }
}
