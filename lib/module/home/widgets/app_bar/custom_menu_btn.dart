import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/module/home/bloc/home_bloc.dart';
import 'package:portfolio/utils/app_enums.dart';

class CustomMenuBtn extends StatelessWidget {
  const CustomMenuBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SizedBox(
          width: 40,
          child: AnimatedCrossFade(
            crossFadeState: _getCrossFadeState(context),
            firstChild: TextButton(
              onPressed: () => _menuBtnClicked(context),
              child: const Icon(Icons.menu),
            ),
            secondChild: TextButton(
              onPressed: () => _closeBtnClicked(context),
              child: const Icon(Icons.close),
            ),
            duration: const Duration(milliseconds: 200),
          ),
        );
      },
    );
  }

  _menuBtnClicked(BuildContext context) {
    context.read<HomeBloc>().add(
          const HomeEvent.changeAppBarHeadersAxis(headersAxis: AppBarHeadersAxis.vertical),
        );
  }

  _closeBtnClicked(BuildContext context) {
    context.read<HomeBloc>().add(
          const HomeEvent.changeAppBarHeadersAxis(headersAxis: AppBarHeadersAxis.horizontal),
        );
  }

  CrossFadeState _getCrossFadeState(BuildContext context) {
    final currentHeaderAxis = context.read<HomeBloc>().appBarHeaderAxis;
    return currentHeaderAxis == AppBarHeadersAxis.horizontal
        ? CrossFadeState.showFirst
        : CrossFadeState.showSecond;
  }
}
