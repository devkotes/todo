import 'package:todo/domain/entities/response/todos_response.dart';

abstract class TodoRepository {
  Future<List<TodosResponse>> getTodos();
}
