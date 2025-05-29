# 📝 Flutter ToDo App

A minimal and user-friendly **ToDo application** built using **Flutter**, with local storage and swipe-to-delete features. This app allows users to **create, manage, and track tasks efficiently**, making productivity simple and accessible.

## 🚀 Features

- ✅ Add new tasks via a clean dialog interface
- 🔁 Mark tasks as complete/incomplete
- 🗑️ Delete tasks with a swipe (using `flutter_slidable`)
- 💾 Persistent local storage with `Hive`
- 📊 Dynamic UI updates reflecting task state (incomplete, complete, or none)

## 🛠️ Technologies Used

| Feature        | Package Used                                         |
|----------------|------------------------------------------------------|
| Local Storage  | [`Hive`](https://pub.dev/packages/hive)             |
| Swipe Actions  | [`flutter_slidable`](https://pub.dev/packages/flutter_slidable) |

## 📱 Demo Screenshots

| Add Task Dialog Box | Delete Task |
|---------------------|-------------|
| ![Add Task](https://github.com/AkshataSagare/ToDo-App/blob/master/demo/add_new_task_dialog_box.png) | ![Delete Task](https://github.com/AkshataSagare/ToDo-App/blob/master/demo/delete_task.png) |

| Incomplete Tasks | No Tasks | One Task Completed |
|------------------|------------------|--------------------|
| ![Incomplete](https://github.com/AkshataSagare/ToDo-App/blob/master/demo/incomplete_tasks_homescreen.png) | ![No Tasks](https://github.com/AkshataSagare/ToDo-App/blob/master/demo/no_tasks_homescreen.png) | ![Completed](https://github.com/AkshataSagare/ToDo-App/blob/master/demo/one_complete_task_homescreen.png) |

## 📂 Folder Structure

```bash
## 📂 Folder Structure

```bash
lib/
├── data/
│   └── database.dart        # Hive-based local database logic
├── pages/
│   └── home_page.dart       # Main screen with task UI and interactions
├── util/
│   ├── dialog_box.dart      # Custom dialog for adding tasks
│   ├── my_button.dart       # Reusable button widget
│   └── todo_tile.dart       # Widget to display each task with actions
└── main.dart                # App entry point

