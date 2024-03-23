import 'package:appartment_rent_and_sale/Business%20Logic/Bloc/authentication/authentication_bloc.dart';
import 'package:appartment_rent_and_sale/Data/Data%20Providers/light_theme.dart';
import 'package:appartment_rent_and_sale/Presentation/Routes/route_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool isUserLoggedInValue = true;
  runApp(ALaCare(isAuth: isUserLoggedInValue));
}

class ALaCare extends StatelessWidget with WidgetsBindingObserver {
  final bool isAuth;
  const ALaCare({super.key, required this.isAuth});

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    // super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    // super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationCubit>(
          create: (context) => AuthenticationCubit(storageService: null),
        ),
      ],
      child: MaterialApp.router(
        title: 'A La Care',
        theme: lightTheme,
        routerConfig: RouteConfig.returnRouter(isAuth: isAuth),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
