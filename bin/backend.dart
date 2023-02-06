import 'package:shelf/shelf.dart';

import 'api/login_api.dart';
import 'infra/custom_server.dart';

void main() async {
  var cascateHandler = Cascade();
  await CustomServer().initialize(LoginApi().handler);
}
