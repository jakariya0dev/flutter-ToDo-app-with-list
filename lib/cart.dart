import 'package:flutter/material.dart';
import 'model.dart';

class Cart extends StatefulWidget {
  final int index;
  const Cart({Key? key, required this.index}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onLongPress: () {},
        onTap: () {},
        child: ListTile(
          dense: true,
          leading: CircleAvatar(child: Text('${widget.index + 1}')),
          title: Text(
            '${Model.taskList[widget.index].title}',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                decoration:
                    isTrue ? TextDecoration.lineThrough : TextDecoration.none),
          ),
          subtitle: Text('data: 12/12/22 time: 12:00 PM'),
          trailing: GestureDetector(
              onTap: () {
                setState(() {
                  isTrue = !isTrue;
                });
              },
              child: Icon(
                  isTrue ? Icons.check_box : Icons.check_box_outline_blank)),
        ),
      ),
    );
  }
}
