import 'package:timeline/src/domain/timeline/entities/login.dart';

/// **Conceito**: Model de Comentário
/// **Autor**: Thaisa Bruna / **Data**: 24/05/2022
/// **Alterado por**: Cristian Peres / **Data**: 14/06/2022
/// **Versão**: 2.0
class LoginModel extends Login {
  LoginModel({
    required String apiKey,
  }) : super(
          apiKey: apiKey,
        );

  factory LoginModel.fromJson(dynamic json) {
    return LoginModel(
      apiKey: json['api_key'],
    );
  }
}
