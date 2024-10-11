import 'package:go_router/go_router.dart';
import 'package:sissi_velas_ecommerce/presentation/screens/home_screen.dart';
import 'package:sissi_velas_ecommerce/presentation/screens/login_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login' , builder:(context, state) => LoginScreen(),),
    
    // compartir info entre pantallas.
    // el state tiene extras -> y se deben castear.
     GoRoute(path: '/home' , builder:(context, state) => HomeScreen( name: state.extra as String,),),
     // mannejo de productos en ecommerce requestParam en la url.
     //GoRoute(path: '/home/:name' , builder:(context, state) => HomeScreen( name: state.pathParameters['name'] as String,),),
  ],
  );

  // https://youtu.be/4IZ8uQHCefA?t=1500