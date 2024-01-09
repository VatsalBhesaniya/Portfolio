import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/module/home/bloc/home_bloc.dart';
import 'package:portfolio/module/home/widgets/app_bar/home_app_bar.dart';
import 'package:portfolio/module/home/widgets/app_bar/vertical_headers_builder.dart';
import 'package:portfolio/module/home/widgets/body/about_me/about_me_section.dart';
import 'package:portfolio/module/home/widgets/body/contact/contact_section.dart';
import 'package:portfolio/module/home/widgets/body/experience/experience_section.dart';
import 'package:portfolio/module/home/widgets/body/intro/intro_section.dart';
import 'package:portfolio/module/home/widgets/body/projects/projects_section.dart';
import 'package:portfolio/utils/app_extensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();
  final introKey = GlobalKey();
  final aboutKey = GlobalKey();
  final experienceKey = GlobalKey();
  final projectKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initListenerForInteractWithHeaderIndex();
    });
  }

  void _initListenerForInteractWithHeaderIndex() {
    double introHeight = introKey.currentContext!.size!.height;
    double aboutHeight = aboutKey.currentContext!.size!.height;
    double experienceHeight = experienceKey.currentContext!.size!.height;
    double projectHeight = projectKey.currentContext!.size!.height;
    _controller.addListener(() {
      double controllerHeight = _controller.offset;
      if (_controller.position.extentAfter == 0.0) {
        context.read<HomeBloc>().add(const HomeEvent.changeAppBarHeadersColorByColor(index: 4));
      } else if (controllerHeight < introHeight - 100) {
        context.read<HomeBloc>().add(const HomeEvent.changeAppBarHeadersColorByColor(index: 0));
      } else if (controllerHeight < (introHeight + aboutHeight - 100)) {
        context.read<HomeBloc>().add(const HomeEvent.changeAppBarHeadersColorByColor(index: 1));
      } else if (controllerHeight < (introHeight + aboutHeight + experienceHeight - 100)) {
        context.read<HomeBloc>().add(const HomeEvent.changeAppBarHeadersColorByColor(index: 2));
      } else if (controllerHeight < (introHeight + aboutHeight + experienceHeight + projectHeight - 100)) {
        context.read<HomeBloc>().add(const HomeEvent.changeAppBarHeadersColorByColor(index: 3));
      } else {
        context.read<HomeBloc>().add(const HomeEvent.changeAppBarHeadersColorByColor(index: 4));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SafeArea(
        child: BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            state.maybeWhen(
              appBarHeadersIndexChanged: (index) {
                Navigator.of(context).maybePop();
                const duration = Duration(milliseconds: 300);
                if (index == 0) {
                  Scrollable.ensureVisible(
                    introKey.currentContext!,
                    duration: duration,
                  );
                }
                if (index == 1) {
                  Scrollable.ensureVisible(
                    aboutKey.currentContext!,
                    duration: duration,
                  );
                }
                if (index == 2) {
                  Scrollable.ensureVisible(
                    experienceKey.currentContext!,
                    duration: duration,
                  );
                }
                if (index == 3) {
                  Scrollable.ensureVisible(
                    projectKey.currentContext!,
                    duration: duration,
                  );
                }
                if (index == 4) {
                  Scrollable.ensureVisible(
                    contactKey.currentContext!,
                    duration: duration,
                  );
                }
              },
              orElse: () => null,
            );
          },
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.width * .08),
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    controller: _controller,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IntroSection(key: introKey),
                        AboutMeSection(key: aboutKey),
                        ExperienceSection(key: experienceKey),
                        ProjectsSection(key: projectKey),
                        ContactSection(key: contactKey),
                      ],
                    ),
                  ),
                ),
              ),
              const VerticalHeadersBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
