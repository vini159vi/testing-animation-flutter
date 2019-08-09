import 'package:animation_flutter/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          image: DecorationImage(image: AssetImage("images/background.jpg")),
          margin: listSlidePosition.value * 4,
          title: "Estudar Flutter",
          subtitle: "Com o curso",
        ),
        ListData(
          image: DecorationImage(image: AssetImage("images/background.jpg")),
          margin: listSlidePosition.value * 3,
          title: "Estudar Flutter 2",
          subtitle: "Com o curso 2",
        ),
        ListData(
          image: DecorationImage(image: AssetImage("images/background.jpg")),
          margin: listSlidePosition.value * 2,
          title: "Estudar Flutter 2",
          subtitle: "Com o curso 2",
        ),
        ListData(
          image: DecorationImage(image: AssetImage("images/background.jpg")),
          margin: listSlidePosition.value * 1,
          title: "Estudar Flutter 2",
          subtitle: "Com o curso 2",
        ),
      ],
    );
  }
}
