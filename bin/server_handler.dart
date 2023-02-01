import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServeHandler {
  Handler get handler {
    final router = Router();

    router.get('/', (Request request) {
      return Response(200, body: 'Primeira rota');
    });

    router.get('/ola/mundo/<usuario>', (Request req, String usuario) {
      return Response.ok('Ola Mundo $usuario');
    });

    // http://localhost:8080/query?nome=leo
    router.get('/query', (Request req) {
      String? nome = req.url.queryParameters['nome'];
      String? idade = req.url.queryParameters['idade'];
      return Response.ok('Query eh: $nome , idade $idade');
    });

    router.post('/login', (Response req) async {
      var result = await req.readAsString();

      return Response.ok(result);
    });
    return router;
  }
}
