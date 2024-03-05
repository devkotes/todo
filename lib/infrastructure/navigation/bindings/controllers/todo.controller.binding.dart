import 'package:todo/data/remote/todos_remote_impl.dart';
import 'package:todo/data/repositories/todo_repository_impl.dart';
import 'package:todo/domain/usecases/get_todos_usecase.dart';
import 'package:get/get.dart';

import '../../../../presentation/todo/controllers/todo.controller.dart';

class TodoControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoController>(
      () => TodoController(
          getTodosUsecase: Get.put(GetTodosUsecase(
              todoRepository:
                  TodoRepositoryImpl(todoRemoteData: TodoRemoteImpl())))),
    );
  }
}
