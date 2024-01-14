import 'package:get_it/get_it.dart';
import 'package:news_app/src/data/db_service.dart';
import 'package:news_app/src/domain/repository/news_repository.dart';

late final NewsRepository repository;

GetIt setupLocator() {
  GetIt locator = GetIt.instance;
  locator.registerSingleton<GetNetwork>(const GetNetwork());
  locator.registerSingleton(
      NewRepositoryImplement(network: locator<GetNetwork>()));
  repository = locator<NewRepositoryImplement>();
  return locator;
}
