import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_codebase/infrastructure/architecture/bloc/base_state.dart';
import 'package:flutter_cubit_codebase/presentation/home_screen/cubit/home_screen_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, BaseState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.only(top: 120),
            child: Center(
              child: Column(
                children: [
                  if (state is LoadingState) const Text("loading"),
                  if (state is SuccessState) Text("success ${state.response}"),
                  ElevatedButton(
                    child: const Text('Get setting'),
                    onPressed: () {
                      context.read<HomeScreenCubit>().getDate();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
