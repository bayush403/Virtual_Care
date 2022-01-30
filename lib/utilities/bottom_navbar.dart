import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/constants.dart';

class TabBarMaterialWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;
  const TabBarMaterialWidget(
      {Key? key, required this.index, required this.onChangedTab})
      : super(key: key);
  @override
  State<TabBarMaterialWidget> createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: kInactiveCardColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: BuildTabItem(
              index: 0,
              icon: const Icon(FontAwesomeIcons.home),
            ),
          ),
          Expanded(
            child: BuildTabItem(
              index: 1,
              icon: const Icon(FontAwesomeIcons.gamepad),
            ),
          ),
          Opacity(
            opacity: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.home),
            ),
          ),
          Expanded(
            child: BuildTabItem(
              index: 2,
              icon: const Icon(FontAwesomeIcons.chartPie),
            ),
          ),
          Expanded(
            child: BuildTabItem(
              index: 3,
              icon: const Icon(FontAwesomeIcons.userCircle),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget BuildTabItem({required Icon icon, required int index}) {
    final isSelected = index == widget.index;
    return IconTheme(
      data: IconThemeData(
        color: isSelected ? kInactiveTab : kActiveCardColor,
      ),
      child:
          IconButton(onPressed: () => widget.onChangedTab(index), icon: icon),
    );
  }
}
