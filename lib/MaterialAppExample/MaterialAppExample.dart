import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MaterialAppExample extends StatefulWidget {
  @override
  _MaterialAppExampleState createState() => _MaterialAppExampleState();
}

class _MaterialAppExampleState extends State<MaterialAppExample> {

  GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: _navigatorKey,
        scaffoldMessengerKey: _scaffoldMessengerKey,
        // home: Scaffold(
        //   floatingActionButton: FloatingActionButton(
        //     onPressed: (){
        //       // showDialog(context: context, builder: (_) => AlertDialog(title: Text("title"),));
        //       // showDialog(context: _navigatorKey.currentState.overlay.context, builder: (_) => AlertDialog(title: Text("title"),));
        //       _scaffoldMessengerKey.currentState.showSnackBar(SnackBar(content: Text("scalloldMessenger")));
        //     },
        //     child: Icon(Icons.add, color: Colors.white,),
        //   ),
        //   appBar: AppBar(title: Text("MaterialAPP"),),
        //   body: Center(child: Text("MaterialApp"),),
        // ),
        // routes: {
        //   "/A": (_) => A(),
        //   "/B": (_) => B()
        // },
        initialRoute: "/A",
        onGenerateRoute: (setting) {
          print(setting.name);
          print(setting.arguments);
          return null;
        },
        onGenerateInitialRoutes: (initialRoute) {
          return [
            MaterialPageRoute(builder: (_) => A()),
            MaterialPageRoute(builder: (_) => B()),
          ];
        },
        onUnknownRoute: (settings) {
          print(settings.name);
          print(settings.arguments);
          return MaterialPageRoute(builder: (_) => A());
        },
        navigatorObservers: [
          MyObsever()
        ],
        // builder: (_, child) {
        //   return Scaffold(
        //     appBar: AppBar(
        //       title: Text("builder"),
        //     ),
        //     body: child,
        //   );
        // },
        title: "MaterialApp",
        onGenerateTitle: (_) {
          return "MaterialApp";
        },
        color: Colors.red,
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
        darkTheme: ThemeData(
          primarySwatch: Colors.green
        ),
        themeMode: ThemeMode.light,
        highContrastTheme: ThemeData(
          primarySwatch: Colors.blue
        ),
        highContrastDarkTheme: ThemeData(
          primarySwatch: Colors.orange
        ),
        locale: Locale("en", "US"), //中文简体
        localizationsDelegates: [
          // 本地化委托的意思
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          // 代理类
          TestLocalizationsDelegate()
        ],
        supportedLocales: [
          Locale("zh", "CN"),
          Locale("en", "US")
        ],
        localeListResolutionCallback: (List<Locale> locales, Iterable<Locale> supportedLocale) {
          print(locales);
          print(supportedLocale);
          return Locale("zh", "CN");
        },
        localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
          print(locale);
          print(supportedLocales);
          return Locale("zh", "CN");
        },
        // debugShowMaterialGrid: true,
        // showPerformanceOverlay: true,
        // checkerboardRasterCacheImages: true,
        // checkerboardOffscreenLayers: true,
        // showSemanticsDebugger: true,
        debugShowCheckedModeBanner: false,
    );
  }
}

class MyObsever extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
    // TODO: implement didPush
    print(route);
    print(previousRoute);
    super.didPush(route, previousRoute);
  }
}

class A extends StatefulWidget {
  @override
  _AState createState() => _AState();
}

class _AState extends State<A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A"),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
              Navigator.pushNamed(context, "/B");
          },
          child: Text("PUSH B"),
        )
      ),
    );
  }
}

class B extends StatefulWidget {
  @override
  _BState createState() => _BState();
}

class _BState extends State<B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("B"),
      ),
      body: Center(
          child: TextButton(
            onPressed: (){
              Navigator.pushNamed(context, "/AA");
            },
            child: Text("PUSH A ${TestLocalizations.of(context).title}"),
          )
      ),
    );
  }
}


// Locale资源类
class TestLocalizations {
  TestLocalizations(this.isZh);

  bool isZh = false;

  // 为了方便获取的一个静态方法
  static TestLocalizations of(BuildContext context) {
    return Localizations.of<TestLocalizations>(context, TestLocalizations);
  }

  String get title {
    return isZh ? "Material 示例工程" : "Material example";
  }
}

// Locale代理类
class TestLocalizationsDelegate extends LocalizationsDelegate<TestLocalizations> {

  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  @override
  Future<TestLocalizations> load(Locale locale) {
    return SynchronousFuture<TestLocalizations>(
      TestLocalizations(locale.languageCode == 'zh')
    );
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<TestLocalizations> old) => false;

}
