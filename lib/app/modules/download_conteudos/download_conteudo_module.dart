import 'package:blink/app/modules/download_conteudos/download_conteudo_controller.dart';
import 'package:blink/app/services/progress_service.dart';
import 'package:blink/app/services/sincroniza_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'download_conteudo_page.dart';

class DownloadConteudoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DownloadConteudoController(i.get<ProgressService>(), i.get<SincronizaService>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => DownloadConteudoPage()),
      ];

  static Inject get to => Inject<DownloadConteudoModule>.of();
}
