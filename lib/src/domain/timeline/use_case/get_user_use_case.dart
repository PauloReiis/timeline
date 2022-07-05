import 'package:timeline/src/domain/timeline/repositories/timeline_repository.dart';

/// **Conceito:** UseCase para carregar comentários
/// **Autor:** Marcos Santos / **Data:** 20/05/2022
/// **Versão:** 1.0
class LoginUseCase {
  final TimelineRepository timelineRepository;

  LoginUseCase({required this.timelineRepository});

  Future<bool> call() async {
    final result = await timelineRepository.login();

    if(result != null && result.apiKey != null && result.apiKey!.isNotEmpty){
      return true;
    } else{
      return false;
    }
  }
}
