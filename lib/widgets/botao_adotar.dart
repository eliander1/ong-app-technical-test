import 'package:app_ong/widgets/ong_app_theme.dart';
import 'package:flutter/material.dart';

class BotaoAdotar extends StatelessWidget {
  const BotaoAdotar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
            if (states.contains(MaterialState.pressed)) {
              return OngAppTheme.secondColor;
            }
            return OngAppTheme.mainColor;
          }),
          minimumSize: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Size(double.maxFinite * 0.85, 30);
            }
            return Size(double.maxFinite, 43);
          }),
          shape: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16));
            }
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10));
          }),
          textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return TextStyle(fontSize: 12, fontFamily: OngAppTheme.mainFont);
            }
            return TextStyle(fontSize: 18, fontFamily: OngAppTheme.mainFont);
          }),
        ),
        onPressed: () {
          debugPrint('Adotado!');
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Adotado com sucesso!')));
        },
        child: const Text('Adotar Agora'),
      ),
    );
  }
}
