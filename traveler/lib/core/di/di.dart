


import 'package:get_it/get_it.dart';
import 'package:traveler/logic/main-app-provider.dart';

import '../../data/online/dio-helper.dart';
import '../../data/online/repo.dart';

GetIt di = GetIt.instance..allowReassignment = true;

Future init() async {


  di.registerFactory<DioHelper>(
        () => DioImplementation(),
  );

  di.registerFactory<Repository>(
        () => RepoImplementation(
      dioHelper: di<DioHelper>(),

    ),
  );

  di.registerFactory<MainAppProvider>(
        () => MainAppProvider(di<Repository>()),
  );


}