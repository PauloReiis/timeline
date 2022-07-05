import 'package:flutter/material.dart';

class PostElementsWidget extends StatelessWidget {
  const PostElementsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mountTimeline();
  }

  Widget mountTimeline() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text('1'),
                ),
                Text('Paulo'),
              ],
            ),
            Text('Titulo'),
            Text('Textoasdasd asdad ad ad ad a dasdasdasda sdasdasd asdasdadad ad asd asdasd'),
          ],
        ),
      ],
    );
  }
}
