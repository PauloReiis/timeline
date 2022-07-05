import 'package:flutter/material.dart';
import 'package:timeline/src/app/config/routes.dart';
import 'package:timeline/src/app/feature/timeline/controller/timeline_controller.dart';
import 'package:timeline/src/core/constants/timeline_constants.dart';
import 'package:timeline/src/data/timeline/data_sources/remote/timeline_remote.dart';
import 'package:timeline/src/data/timeline/repositories/timeline_repository_impl.dart';
import 'package:timeline/src/domain/timeline/use_case/get_user_use_case.dart';
import 'package:timeline/src/domain/timeline/use_case/login_use_case.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

/// **Conceito**: Montagem do Widget App
/// **Autor**: Marcos Santos / **Data**: 05/04/2022
/// **Alterado por**: Cristian Peres / **Data**: 29/06/2022
/// **Versão**: 1.5
class App extends StatelessWidget {
  final Widget initRoute;

  App({Key? key, required this.initRoute}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TimelineController(
            loginUseCase: LoginUseCase(
              timelineRepository: TimelineRepositoryImpl(
                timelineDataSource: TimelineRemote(
                  client: http.Client(),
                ),
              ),
            ),
            getUserUseCase: GetUserUseCase(
                timelineRepository: TimelineRepositoryImpl(
              timelineDataSource: TimelineRemote(
                client: http.Client(),
              ),
            )),
          ),
        ),
      ],
      child: MaterialApp(
        title: TimelineConstants.titleApp,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: initRoute,
        routes: Routes.routes,
      ),
    );
  }
}
