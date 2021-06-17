import 'package:blink/app/modules/download_conteudos/download_conteudo_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'download_conteudo_page.dart';

class DownloadConteudoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $DownloadConteudoController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => DownloadConteudoPage()),
      ];

  static Inject get to => Inject<DownloadConteudoModule>.of();
}
