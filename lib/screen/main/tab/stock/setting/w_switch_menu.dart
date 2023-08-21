import 'package:flutter/material.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/screen/main/tab/stock/setting/w_os_switch.dart';

import '../../../../../common/widget/w_empty_expanded.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchMenu(this.title, this.value, {required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.bold.make(),
        emptyExpanded,
        OsSwitch(
          value: value,
          onChanged: onChanged,
        )
      ],
    ).pSymmetric(h: 20);
  }
}