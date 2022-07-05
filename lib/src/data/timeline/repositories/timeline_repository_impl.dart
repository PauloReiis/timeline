import 'package:timeline/src/data/timeline/data_sources/timeline_data_source.dart';
import 'package:timeline/src/domain/timeline/entities/login.dart';
import 'package:timeline/src/domain/timeline/entities/user.dart';
import 'package:timeline/src/domain/timeline/repositories/timeline_repository.dart';


/// **Conceito**: Implementação do repositório de comentários
/// **Autor**: Cristian Peres / **Data**: 14/06/2022
/// **Versão**: 1.0
class TimelineRepositoryImpl implements TimelineRepository {
  final TimelineDataSource timelineDataSource;

  TimelineRepositoryImpl({required this.timelineDataSource});

  @override
  Future<Login>? login() {
    return timelineDataSource.login();
  }

  @override
  Future<User>? getUser() {
    return timelineDataSource.getUser();
  }
}
