import 'package:dogs_list/data/repository/repository.dart';
import 'package:dogs_list/data/repository/repository_implementation.dart';
import 'package:dogs_list/data/services/network_services.dart';
import 'package:dogs_list/data/services/network_services_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  NetworkService service = NetworkServiceImpl();
  getIt.registerSingleton<NetworkService>(service);
  getIt.registerSingleton<Repository>(RepositoryImpl(service));
}