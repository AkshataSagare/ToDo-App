import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  const ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete_outline,
              backgroundColor: Colors.red.shade400,
              foregroundColor: Colors.white,
              borderRadius: BorderRadius.circular(16),
              label: 'Delete',
              spacing: 8,
            ),
          ],
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: taskCompleted 
                ? Colors.grey[100] 
                : Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: taskCompleted 
                  ? Colors.grey[300]! 
                  : Colors.transparent,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: taskCompleted 
                    ? Colors.grey.withOpacity(0.1)
                    : Colors.grey.withOpacity(0.15),
                blurRadius: taskCompleted ? 4 : 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              // Custom Checkbox
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: taskCompleted 
                      ? const Color(0xFF10B981) 
                      : Colors.transparent,
                  border: Border.all(
                    color: taskCompleted 
                        ? const Color(0xFF10B981) 
                        : Colors.grey[400]!,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: GestureDetector(
                  onTap: () => onChanged?.call(!taskCompleted),
                  child: taskCompleted
                      ? const Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        )
                      : null,
                ),
              ),

              const SizedBox(width: 16),

              // Task content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Task Name
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: taskCompleted 
                            ? Colors.grey[500] 
                            : Colors.grey[800],
                        decoration: taskCompleted 
                            ? TextDecoration.lineThrough 
                            : TextDecoration.none,
                        decorationColor: Colors.grey[400],
                        decorationThickness: 2,
                      ),
                      child: Text(
                        taskName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    
                    if (taskCompleted) ...[
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            size: 14,
                            color: Colors.grey[400],
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Completed',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),

              // Status indicator
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 4,
                height: 40,
                decoration: BoxDecoration(
                  color: taskCompleted 
                      ? const Color(0xFF10B981) 
                      : const Color(0xFF6366F1),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}