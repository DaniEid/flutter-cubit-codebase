import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';

import '../../presentation/home_screen/cubit/home_screen_cubit.dart';
import 'inject_config.dart';

///This will hold every bloc provider that will be used across the app
List<BlocProviderSingleChildWidget> get appProviders => [
      BlocProvider(create: (_) => HomeScreenCubit(getIt.get())),
    ];
