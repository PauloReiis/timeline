import 'package:flutter/material.dart';
import 'package:timeline/src/domain/timeline/use_case/get_user_use_case.dart';
import 'package:timeline/src/domain/timeline/use_case/login_use_case.dart';

class TimelineController extends ChangeNotifier {
  final LoginUseCase loginUseCase;
  final GetUserUseCase getUserUseCase;
  int tryLogin = 0;

  TimelineController({required this.loginUseCase,required this.getUserUseCase});

  Future<void> init() async {
    var isLogin = await loginUseCase();
    if (isLogin) {
      await getUserUseCase();
      //servico do usuario
      //servico do post
      print('chamar outros serviços');
    } else {
      //trylogin
      if (tryLogin == 0) {
        tryLogin++;
        await Future.delayed(const Duration(seconds: 3), () async {
          await init();
        });
      } else {
        //feedback erro
        print('da um feedback de erro');
      }
    }
  }
}
