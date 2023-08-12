

import 'package:flutter/material.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/screen/main/tab/home/vo/vo_bank_account.dart';

import '../../../../common/widget/w_rounded_container.dart';

class BankAccountWidget extends StatelessWidget {

  final BankAccount account;

  const BankAccountWidget(this.account,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(account.bank.logoImagePath,width: 40,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (account.accountTypeName ?? "${account.bank.name} 통장").text.white.size(20).make(),
              ("${account.balance}원").text.white.bold.size(18).make(),

            ]).pSymmetric(h : 20,v: 10),
        ),
        RoundedContainer(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          radius: 10,
          backGroundColor: context.appColors.roundedButtonBackground,child: "송금".text.white.bold.make(),)

      ],
    );
  }
}
