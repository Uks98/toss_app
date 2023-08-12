
import 'package:toss_app_div/screen/main/tab/home/vo/vo_bank_account.dart';

import 'banks_dummy.dart';

final backAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final backAccountShinhan2 =
    BankAccount(bankShinhan, 30000000, accountTypeName: "저축예금");
final backAccountShinhan3 =
    BankAccount(bankShinhan, 12000000, accountTypeName: "저축예금");
final backAccountToss = BankAccount(bankTtoss, 10000000);
final backAccountKaKao =
    BankAccount(bankKKao, 30000000, accountTypeName: "입출금 통장");
final backAccountKaKao1 =
BankAccount(bankKKao, 3000, accountTypeName: "입출금 통장");
final backAccountKaKao2 =
BankAccount(bankKKao, 70000000, accountTypeName: "입출금 통장");
final List<BankAccount>bankAccounts = [
  backAccountShinhan1,
  backAccountShinhan2,
  backAccountShinhan3,
  backAccountToss,
  backAccountKaKao,
  backAccountKaKao1,
  backAccountKaKao2
];
