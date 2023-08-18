import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_utils_fork/keyboard_utils.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/common/util/app_keyboard_util.dart';
import 'package:toss_app_div/common/widget/w_arrow.dart';
import 'package:toss_app_div/common/widget/w_text_field_with_delete.dart';

class StockSearchAppBar extends StatelessWidget implements PreferredSizeWidget{
  final TextEditingController controller;

  const StockSearchAppBar({required this.controller,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: [
            Tap(onTap: ()=>Nav.pop(context), child: const SizedBox(
                width: 56,
                height: kToolbarHeight,
                child: Arrow(direction: AxisDirection.left,),),),
            Expanded(child: TextFieldWithDelete(controller: controller,
              textInputAction: TextInputAction.search,
              onEditingComplete: (){
                AppKeyboardUtil.hide(context);
              },
              texthint: "'커피'를 검색해보세요",).pOnly(top: 6),),
            width20,
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
