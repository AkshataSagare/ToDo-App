import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)?onChanged;
  final Function(BuildContext)?deleteFunction;

const ToDoTile({super.key, required this.taskName, required this.taskCompleted, required this.onChanged, required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), 
        children: [
        SlidableAction(
          onPressed: deleteFunction,
          icon: Icons.delete,
          backgroundColor: Colors.red.shade300,
          borderRadius: BorderRadius.circular(12),
          )
          ],
          ),
        child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(color: const Color.fromARGB(255, 20, 130, 209),
          borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
        
              //check Box
              Checkbox(value: taskCompleted, onChanged: onChanged, checkColor: const Color.fromARGB(255, 20, 130, 209), activeColor: const Color.fromARGB(255, 255, 255, 255),),
        
              //Task Name
              Text(
                taskName,
                style: TextStyle(decoration: taskCompleted ?TextDecoration.lineThrough: TextDecoration.none, color: Colors.white, fontSize: 20,
            fontWeight: FontWeight.bold,),
                ),
            ],
          ),
        
        ),
      ),
    );
  }
}