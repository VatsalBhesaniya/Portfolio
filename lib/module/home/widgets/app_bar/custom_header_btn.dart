import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/module/home/bloc/home_bloc.dart';
import 'package:portfolio/utils/app_enums.dart';
import 'package:portfolio/utils/app_extensions.dart';

class CustomHeaderBtn extends StatelessWidget {
  const CustomHeaderBtn({super.key, required this.headerIndex});

  final int headerIndex;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<HomeBloc>().add(HomeEvent.changeAppBarHeadersIndex(index: headerIndex));
      },
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
          (states) {
            if (context.read<HomeBloc>().appBarHeaderIndex == headerIndex) {
              return Theme.of(context).textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w700
              ) ??
                  const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'OpenSans',
                  );
            } else {
              return Theme.of(context).textTheme.labelSmall ??
                  const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'OpenSans',
                  );
            }
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (context.read<HomeBloc>().appBarHeaderIndex == headerIndex) {
              return Theme.of(context).colorScheme.primary;
            } else {
              return Theme.of(context).colorScheme.outline;
            }
          },
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 10,
        ),
        child: Text(
          AppBarHeaders.values[headerIndex].getString(),
        ),
      ),
    );
  }
}
