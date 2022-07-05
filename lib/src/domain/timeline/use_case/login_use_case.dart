import 'package:timeline/src/domain/timeline/entities/user.dart';
import 'package:timeline/src/domain/timeline/repositories/timeline_repository.dart';

/// **Conceito:** UseCase para carregar comentários
/// **Autor:** Marcos Santos / **Data:** 20/05/2022
/// **Versão:** 1.0
class GetUserUseCase {
  final TimelineRepository timelineRepository;

  GetUserUseCase({required this.timelineRepository});

  Future<User?> call() async {
    final result = await timelineRepository.getUser();

    if(result != null){
      return result;
    }
    return null;
  }
}
