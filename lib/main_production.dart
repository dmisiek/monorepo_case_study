import 'package:monorepo_case_study/app/app.dart';
import 'package:monorepo_case_study/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
