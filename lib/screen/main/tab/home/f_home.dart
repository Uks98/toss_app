
import 'package:flutter/material.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/screen/main/tab/home/w_bank_account.dart';
import 'package:toss_app_div/screen/main/tab/home/w_ttoss_bar.dart';

import '../../../../common/util/async.dart';
import '../../../../common/widget/w_big_button.dart';
import '../../../../common/widget/w_rounded_container.dart';
import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';
import '../../../dialog/d_message.dart';
import '../../s_main.dart';
import 'bank_accounts_dummy.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          RefreshIndicator(
            edgeOffset: TtossAppBar.appbarHeight,
            onRefresh: () async {
              await sleepAsync(2);
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                  top: TtossAppBar.appbarHeight,
                  bottom: MainScreenState.bottomNavigatorHeight),
              child: Column(
                children: [
                  BigButton(
                    "토스뱅크",
                    onTap: (() {
                      context.showSnackbar("버튼을 눌렀어요");
                    }),
                  ),
                  height10,
                  RoundedContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "자산".text.bold.white.make(),
                        height5,
                        ...bankAccounts.map((e) => BankAccountWidget(e))
                      ],
                    ),
                  ),
                ],
              ).pSymmetric(h: 20),
            ),
          ),
          TtossAppBar()
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context) {
    context.showSnackbar('snackbar 입니다.',
        extraButton: Tap(
          onTap: () {
            context.showErrorSnackbar('error');
          },
          child: '에러 보여주기 버튼'
              .text
              .white
              .size(13)
              .make()
              .centered()
              .pSymmetric(h: 10, v: 5),
        ));
  }

  Future<void> showConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '오늘 기분이 좋나요?',
      buttonText: "네",
      cancelButtonText: "아니오",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      ColorBottomSheet(
        '❤️',
        context: context,
        backgroundColor: Colors.yellow.shade200,
      ).show();
    });

    confirmDialogResult?.runIfFailure((data) {
      ColorBottomSheet(
        '❤️힘내여',
        backgroundColor: Colors.yellow.shade300,
        textColor: Colors.redAccent,
      ).show();
    });
  }

  Future<void> showMessageDialog() async {
    final result = await MessageDialog("안녕하세요").show();
    debugPrint(result.toString());
  }

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
