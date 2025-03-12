import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Ce widget est la racine de votre application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avapp',
      theme: ThemeData(
        fontFamily: 'NotoSans',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Page d\'accueil de l\'application Avapp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Ce widget est la page d'accueil de votre application. Il est stateful, ce qui signifie
  // qu'il a un objet State (défini ci-dessous) qui contient des champs qui affectent
  // son apparence.

  // Cette classe est la configuration de l'état. Elle contient les valeurs (dans ce
  // cas le titre) fournies par le parent (dans ce cas le widget App) et
  // utilisées par la méthode build de l'état. Les champs dans une sous-classe de Widget
  // sont toujours marqués "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Cet appel à setState indique au framework Flutter que quelque chose a
      // changé dans cet état, ce qui provoque la réexécution de la méthode build ci-dessous
      // afin que l'affichage puisse refléter les valeurs mises à jour. Si nous changions
      // _counter sans appeler setState(), alors la méthode build ne serait pas
      // appelée à nouveau, et donc rien ne semblerait se passer.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Cette méthode est réexécutée à chaque fois que setState est appelée, par exemple comme fait
    // par la méthode _incrementCounter ci-dessus.
    //
    // Le framework Flutter a été optimisé pour rendre les méthodes build rapides à réexécuter,
    // afin que vous puissiez simplement reconstruire tout ce qui doit être mis à jour
    // plutôt que de devoir changer individuellement les instances de widgets.
    return Scaffold(
      appBar: AppBar(
        // ESSAYEZ CECI : Essayez de changer la couleur ici pour une couleur spécifique (par exemple
        // Colors.amber ?) et déclenchez un rechargement à chaud pour voir la couleur de l'AppBar
        // changer tandis que les autres couleurs restent les mêmes.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Ici, nous prenons la valeur de l'objet MyHomePage qui a été créé par
        // la méthode App.build, et l'utilisons pour définir le titre de notre appbar.
        title: Text(widget.title),
      ),
      body: Center(
        // Center est un widget de mise en page. Il prend un seul enfant et le positionne
        // au centre du parent.
        child: Column(
          // Column est également un widget de mise en page. Il prend une liste d'enfants et
          // les dispose verticalement. Par défaut, il s'ajuste pour s'adapter à ses
          // enfants horizontalement, et essaie d'être aussi haut que son parent.
          //
          // Column a diverses propriétés pour contrôler comment il s'ajuste et
          // comment il positionne ses enfants. Ici, nous utilisons mainAxisAlignment pour
          // centrer les enfants verticalement ; l'axe principal ici est l'axe vertical
          // car les colonnes sont verticales (l'axe croisé serait
          // horizontal).
          //
          // ESSAYEZ CECI : Invoquez "debug painting" (choisissez l'action "Toggle Debug Paint"
          // dans l'IDE, ou appuyez sur "p" dans la console), pour voir le
          // fil de fer pour chaque widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Vous avez appuyé sur le bouton autant de fois :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrémenter',
        child: const Icon(Icons.add),
      ), // Cette virgule finale rend le formatage automatique plus agréable pour les méthodes build.
    );
  }
}
