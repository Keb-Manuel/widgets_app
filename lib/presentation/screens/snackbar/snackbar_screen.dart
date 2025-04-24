import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackback = SnackBar(
      content: const Text('hello world'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackback);
  }

  void opneDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro'),
        content: const Text('Laboris voluptate cillum non fugiat. Amet eu duis incididunt nisi commodo. Et officia ex adipisicing elit adipisicing irure. Aute minim enim tempor adipisicing eiusmod exercitation consectetur. Pariatur excepteur consequat ipsum sunt consequat aute enim ut proident aute. Nostrud fugiat cillum ullamco officia.'),
        actions: [
          TextButton(onPressed: ()=> context.pop(), child: Text('Cancelar')),

          FilledButton(onPressed: ()=> context.pop(), child: Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snackbar y Dialogues'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    children: [
                      const Text('Ea irure cillum elit anim exercitation mollit do tempor dolore aliqua amet adipisicing. Ex exercitation dolor sunt mollit officia adipisicing ullamco enim magna cillum cillum labore. Nostrud culpa Lorem duis ad commodo velit commodo nulla labore amet magna non. Velit occaecat anim eiusmod et aliquip ullamco officia velit nisi deserunt anim.')
                    ]
                    );
                }, 
                child: Text('Licencias Mostradas')),
            FilledButton.tonal(
                onPressed: () => opneDialog(context), child: Text('Mostrar Dialogo de pantalla')),
          ],
        )),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackbar(context),
          icon: Icon(Icons.remove_red_eye_outlined),
          label: Text('Mostrar Snackbar'),
        ));
  }
}
