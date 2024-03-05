import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(
  bankShinhan,
  balance: 300000000,
  accountTypeName: '신한 주거래 우대통장(저축저금)',
);
final bankAccountShinhan2 =
    BankAccount(bankShinhan, balance: 30000000, accountTypeName: '저축예금');
final bankAccountShinhan3 =
    BankAccount(bankShinhan, balance: 3000000, accountTypeName: '저축예금');

final bankAccountToss = BankAccount(bankToss, balance: 5000000);
final bankAccountKakao =
    BankAccount(bankKakao, balance: 7000000, accountTypeName: '입출금통장');

final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];
