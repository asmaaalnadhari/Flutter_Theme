import 'package:flutter/material.dart';
import 'package:flutter_theme/core/SharedPrefrences/CasheHelper.dart';
import 'package:flutter_theme/core/global/theme/theme_data/theme_data_light.dart';
import 'core/global/theme/theme_data/theme_data_dark.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.cacheInitialization();
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   bool TF=true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   appBarTheme:  AppBarTheme(
      //     color: Colors.teal,
      //       iconTheme: IconThemeData(
      //           color: Colors.purple[400]
      //       ),
      //
      //       centerTitle: true,
      //     toolbarHeight: 90,
      //     titleTextStyle: TextStyle(
      //       fontSize: 30,
      //       fontWeight: FontWeight.bold
      //     ),
      //     elevation: 0,
      //     systemOverlayStyle: SystemUiOverlayStyle(
      //       statusBarColor: Colors.white,
      //         // systemStatusBarContrastEnforced:true,
      //         systemNavigationBarColor:Colors.yellow,
      //         systemNavigationBarDividerColor:Colors.green,
      //         statusBarIconBrightness:Brightness.dark
      //     )
      //   ),
      //   scaffoldBackgroundColor: Colors.grey.withOpacity(.9),
      //   bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //     backgroundColor: Colors.cyan[400],
      //     type: BottomNavigationBarType.fixed,
      //       selectedItemColor: Colors.orange,
      //       elevation: 20,
      //
      // ),
      //   iconTheme: IconThemeData(
      //     color: Colors.purple[400]
      // )
      //   // useMaterial3: true,
      // ),
      //   themeMode: ThemeMode.system,
      //   darkTheme: getThemeDataDark(),
      //   theme: getThemeDataLight(),
        theme: CacheData.getData(key: 'Mode')??false?getThemeDataLight():getThemeDataDark(),
      //theme:TF?getThemeDataLight():getThemeDataDark(),
      //   theme: ThemeData(
      //     primarySwatch: Colors.red,
      //     primaryColor: Colors.green
      //   ),
      home:  Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add),
          title: Text('Theme Data',style: TextStyle(
          ),),

        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: (){},
                  child: Text('TextButton')),
              const Divider(
                thickness: 1,
                indent: 100,
                endIndent: 100,
              ),
              SizedBox(
                height: 90,
                width: 100,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Switch(
                      value: TF,
                      onChanged: (value){
                        setState(() {
                          TF=value;
                        });

                      },
                    activeThumbImage: NetworkImage('https://freepngimg.com/thumb/categories/1738.png'),
                   // inactiveThumbColor:Colors.grey[100] ,
                    inactiveThumbImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbRmuMatEH3ymhjMmyYKL6S_kONjiYYEWq-e1Vy2cN26fmDgVH7dFl0A26A9I66KcBycI&usqp=CAU'),
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                indent: 100,
                endIndent: 100,
              ),
              Transform.scale(
                scale: 3,
                child:  Switch(
                  value: CacheData.getData(key: 'Mode')??false,
                  onChanged: (value) {
                      setState(() {
                        CacheData.setData(key: 'Mode', value: value
                        ).then((value) {
                          print(value);
                          print(CacheData.getData(key: 'Mode'));
                      });
                   });
                    }
                    ,
                  activeThumbImage: NetworkImage('https://freepngimg.com/thumb/categories/1738.png'),
                  // inactiveThumbColor:Colors.grey[100] ,
                  inactiveThumbImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbRmuMatEH3ymhjMmyYKL6S_kONjiYYEWq-e1Vy2cN26fmDgVH7dFl0A26A9I66KcBycI&usqp=CAU'),
                ),
                 ),
               Theme(
                data: ThemeData(
                  dividerTheme: DividerThemeData(
                    space: 30,
                    color: !TF?Colors.indigo[100]:Colors.purple
                  )
                ),
                child: const Divider(
                  thickness: 1,
                  indent: 100,
                  endIndent: 100,
                ),
              ),
              Text('Large Text',style: Theme.of(context).textTheme.displayLarge
                  !.merge(TextStyle(
                fontSize: 30,
                color: CacheData.getData(key: 'Mode')??false?Colors.black:Colors.white
              )),),
              const Divider(
                thickness: 1,
                indent: 100,
                endIndent: 100,
              ),
              Text('Medium',style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Colors.teal[700]
              ),),
              const Divider(
                thickness: 1,
                indent: 100,
                endIndent: 100,
              ),
              Text('Text Theme',style: getThemeDataLight().textTheme.displayLarge,)
              ,const Divider(
        thickness: 1,
        indent: 100,
        endIndent: 100,
      )
              ,Icon(Icons.lock_clock),
               Theme(
                   data: ThemeData(
                     iconTheme: IconThemeData(
                       color:Colors.deepPurpleAccent
                     )
                   ),
                   child: Icon(Icons.lock_clock))
            ],
          ),
        ) ,
        // body:  Text('Theme Data',style: TextStyle(
        //     color: Theme.of(context).primaryColor
        // ),),
        // bottomNavigationBar:BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.add),
        //         label: ''
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.add),
        //         label: ''
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.add),
        //         label: ''
        //     ),
        //   ],
        //
        // ) ,
      )
    );
  }
}
///merge function:
// merges the already applied theme with the new TextStyle.
///apply() :
// That creates a copy of text style replacing or altering the specified properties in it.
/// copyWith() :
//It creates a copy of text style but with the given fields replaced with the new values.