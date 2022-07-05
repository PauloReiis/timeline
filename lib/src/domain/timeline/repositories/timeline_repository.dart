import 'package:timeline/src/domain/timeline/entities/login.dart';
import 'package:timeline/src/domain/timeline/entities/user.dart';

/// **Conceito**: Abstração do repositório de comentários
/// **Autor**: Cristian Peres / **Data**: 14/06/2022
/// **Versão**: 1.0
abstract class TimelineRepository {
  Future<Login>? login();
  Future<User>? getUser();
}
