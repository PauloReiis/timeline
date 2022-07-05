import 'package:timeline/src/data/timeline/models/login_model.dart';
import 'package:timeline/src/data/timeline/models/user_model.dart';

/// **Conceito**: Datasource contrato para salvar uma postagem
/// **Autor**: Marcos Santos / **Data**: 05/04/2022
/// **Alterado por**: Cristian Peres / **Data**: 14/06/2022
/// **Versão**: 1.15
abstract class TimelineDataSource {

  Future<LoginModel>login();

  Future<UserModel>getUser();
}
