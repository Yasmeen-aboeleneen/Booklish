import 'package:dio/dio.dart';

import '../../../Features/Home/Data/DataSources/HomeLocal_DataSource.dart';
import '../../../Features/Home/Data/DataSources/HomeRemote_DataSource.dart';
import '../../../Features/Home/Data/Repos/Home_Repo_impl.dart';
import '../../../main.dart';
import '../Api_service.dart';

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
      homeLocalDataSource: HomeLocalDataSourceImplementation(),
      homeRemoteDataSource:
          HomeRemoteDataSourceImplementation(getIt.get<ApiService>())));
}
