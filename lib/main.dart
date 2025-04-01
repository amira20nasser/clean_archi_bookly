import 'package:clean_archi_bookly/core/utils/simple_bloc_observer.dart';
import 'package:clean_archi_bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:clean_archi_bookly/features/home/domain/usecases/fetch_featured_books_use_case.dart';
import 'package:clean_archi_bookly/features/home/domain/usecases/fetch_newest_books_use_case.dart';
import 'package:clean_archi_bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'constants.dart';
import 'core/utils/app_router.dart';
import 'core/utils/functions/setup_service_getit.dart';
import 'features/home/domain/entities/book_entity.dart';
import 'features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceGetIt();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const BooklyApp(),
    ),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            FetchFeaturedBooksUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            FetchNewestBooksUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        // home: const SplashView(),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}

// GetMaterialApp -> Not Well documented - but Good for theme management
// pagination 
// maxResult 
// start index 
