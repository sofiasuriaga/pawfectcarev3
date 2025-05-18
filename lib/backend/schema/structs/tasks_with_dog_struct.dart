// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksWithDogStruct extends BaseStruct {
  TasksWithDogStruct({
    String? taskTitle,
    String? assignedTo,
    String? assignedBy,
    String? taskDescription,
    String? status,
    String? dateCreated,
    String? dateCompleted,
    String? tasksDogId,
    String? lastFollowUpAt,
    AssignedToUserStruct? assignedToUser,
    AssignedByUserStruct? assignedByUser,
    DogStruct? dog,
    String? id,
  })  : _taskTitle = taskTitle,
        _assignedTo = assignedTo,
        _assignedBy = assignedBy,
        _taskDescription = taskDescription,
        _status = status,
        _dateCreated = dateCreated,
        _dateCompleted = dateCompleted,
        _tasksDogId = tasksDogId,
        _lastFollowUpAt = lastFollowUpAt,
        _assignedToUser = assignedToUser,
        _assignedByUser = assignedByUser,
        _dog = dog,
        _id = id;

  // "task_title" field.
  String? _taskTitle;
  String get taskTitle => _taskTitle ?? '';
  set taskTitle(String? val) => _taskTitle = val;

  bool hasTaskTitle() => _taskTitle != null;

  // "assigned_to" field.
  String? _assignedTo;
  String get assignedTo => _assignedTo ?? '';
  set assignedTo(String? val) => _assignedTo = val;

  bool hasAssignedTo() => _assignedTo != null;

  // "assigned_by" field.
  String? _assignedBy;
  String get assignedBy => _assignedBy ?? '';
  set assignedBy(String? val) => _assignedBy = val;

  bool hasAssignedBy() => _assignedBy != null;

  // "task_description" field.
  String? _taskDescription;
  String get taskDescription => _taskDescription ?? '';
  set taskDescription(String? val) => _taskDescription = val;

  bool hasTaskDescription() => _taskDescription != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "date_created" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;

  bool hasDateCreated() => _dateCreated != null;

  // "date_completed" field.
  String? _dateCompleted;
  String get dateCompleted => _dateCompleted ?? '';
  set dateCompleted(String? val) => _dateCompleted = val;

  bool hasDateCompleted() => _dateCompleted != null;

  // "tasks_dog_id" field.
  String? _tasksDogId;
  String get tasksDogId => _tasksDogId ?? '';
  set tasksDogId(String? val) => _tasksDogId = val;

  bool hasTasksDogId() => _tasksDogId != null;

  // "last_follow_up_at" field.
  String? _lastFollowUpAt;
  String get lastFollowUpAt => _lastFollowUpAt ?? '';
  set lastFollowUpAt(String? val) => _lastFollowUpAt = val;

  bool hasLastFollowUpAt() => _lastFollowUpAt != null;

  // "assigned_to_user" field.
  AssignedToUserStruct? _assignedToUser;
  AssignedToUserStruct get assignedToUser =>
      _assignedToUser ?? AssignedToUserStruct();
  set assignedToUser(AssignedToUserStruct? val) => _assignedToUser = val;

  void updateAssignedToUser(Function(AssignedToUserStruct) updateFn) {
    updateFn(_assignedToUser ??= AssignedToUserStruct());
  }

  bool hasAssignedToUser() => _assignedToUser != null;

  // "assigned_by_user" field.
  AssignedByUserStruct? _assignedByUser;
  AssignedByUserStruct get assignedByUser =>
      _assignedByUser ?? AssignedByUserStruct();
  set assignedByUser(AssignedByUserStruct? val) => _assignedByUser = val;

  void updateAssignedByUser(Function(AssignedByUserStruct) updateFn) {
    updateFn(_assignedByUser ??= AssignedByUserStruct());
  }

  bool hasAssignedByUser() => _assignedByUser != null;

  // "dog" field.
  DogStruct? _dog;
  DogStruct get dog => _dog ?? DogStruct();
  set dog(DogStruct? val) => _dog = val;

  void updateDog(Function(DogStruct) updateFn) {
    updateFn(_dog ??= DogStruct());
  }

  bool hasDog() => _dog != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static TasksWithDogStruct fromMap(Map<String, dynamic> data) =>
      TasksWithDogStruct(
        taskTitle: data['task_title'] as String?,
        assignedTo: data['assigned_to'] as String?,
        assignedBy: data['assigned_by'] as String?,
        taskDescription: data['task_description'] as String?,
        status: data['status'] as String?,
        dateCreated: data['date_created'] as String?,
        dateCompleted: data['date_completed'] as String?,
        tasksDogId: data['tasks_dog_id'] as String?,
        lastFollowUpAt: data['last_follow_up_at'] as String?,
        assignedToUser: data['assigned_to_user'] is AssignedToUserStruct
            ? data['assigned_to_user']
            : AssignedToUserStruct.maybeFromMap(data['assigned_to_user']),
        assignedByUser: data['assigned_by_user'] is AssignedByUserStruct
            ? data['assigned_by_user']
            : AssignedByUserStruct.maybeFromMap(data['assigned_by_user']),
        dog: data['dog'] is DogStruct
            ? data['dog']
            : DogStruct.maybeFromMap(data['dog']),
        id: data['id'] as String?,
      );

  static TasksWithDogStruct? maybeFromMap(dynamic data) => data is Map
      ? TasksWithDogStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'task_title': _taskTitle,
        'assigned_to': _assignedTo,
        'assigned_by': _assignedBy,
        'task_description': _taskDescription,
        'status': _status,
        'date_created': _dateCreated,
        'date_completed': _dateCompleted,
        'tasks_dog_id': _tasksDogId,
        'last_follow_up_at': _lastFollowUpAt,
        'assigned_to_user': _assignedToUser?.toMap(),
        'assigned_by_user': _assignedByUser?.toMap(),
        'dog': _dog?.toMap(),
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'task_title': serializeParam(
          _taskTitle,
          ParamType.String,
        ),
        'assigned_to': serializeParam(
          _assignedTo,
          ParamType.String,
        ),
        'assigned_by': serializeParam(
          _assignedBy,
          ParamType.String,
        ),
        'task_description': serializeParam(
          _taskDescription,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'date_created': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'date_completed': serializeParam(
          _dateCompleted,
          ParamType.String,
        ),
        'tasks_dog_id': serializeParam(
          _tasksDogId,
          ParamType.String,
        ),
        'last_follow_up_at': serializeParam(
          _lastFollowUpAt,
          ParamType.String,
        ),
        'assigned_to_user': serializeParam(
          _assignedToUser,
          ParamType.DataStruct,
        ),
        'assigned_by_user': serializeParam(
          _assignedByUser,
          ParamType.DataStruct,
        ),
        'dog': serializeParam(
          _dog,
          ParamType.DataStruct,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static TasksWithDogStruct fromSerializableMap(Map<String, dynamic> data) =>
      TasksWithDogStruct(
        taskTitle: deserializeParam(
          data['task_title'],
          ParamType.String,
          false,
        ),
        assignedTo: deserializeParam(
          data['assigned_to'],
          ParamType.String,
          false,
        ),
        assignedBy: deserializeParam(
          data['assigned_by'],
          ParamType.String,
          false,
        ),
        taskDescription: deserializeParam(
          data['task_description'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['date_created'],
          ParamType.String,
          false,
        ),
        dateCompleted: deserializeParam(
          data['date_completed'],
          ParamType.String,
          false,
        ),
        tasksDogId: deserializeParam(
          data['tasks_dog_id'],
          ParamType.String,
          false,
        ),
        lastFollowUpAt: deserializeParam(
          data['last_follow_up_at'],
          ParamType.String,
          false,
        ),
        assignedToUser: deserializeStructParam(
          data['assigned_to_user'],
          ParamType.DataStruct,
          false,
          structBuilder: AssignedToUserStruct.fromSerializableMap,
        ),
        assignedByUser: deserializeStructParam(
          data['assigned_by_user'],
          ParamType.DataStruct,
          false,
          structBuilder: AssignedByUserStruct.fromSerializableMap,
        ),
        dog: deserializeStructParam(
          data['dog'],
          ParamType.DataStruct,
          false,
          structBuilder: DogStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TasksWithDogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TasksWithDogStruct &&
        taskTitle == other.taskTitle &&
        assignedTo == other.assignedTo &&
        assignedBy == other.assignedBy &&
        taskDescription == other.taskDescription &&
        status == other.status &&
        dateCreated == other.dateCreated &&
        dateCompleted == other.dateCompleted &&
        tasksDogId == other.tasksDogId &&
        lastFollowUpAt == other.lastFollowUpAt &&
        assignedToUser == other.assignedToUser &&
        assignedByUser == other.assignedByUser &&
        dog == other.dog &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([
        taskTitle,
        assignedTo,
        assignedBy,
        taskDescription,
        status,
        dateCreated,
        dateCompleted,
        tasksDogId,
        lastFollowUpAt,
        assignedToUser,
        assignedByUser,
        dog,
        id
      ]);
}

TasksWithDogStruct createTasksWithDogStruct({
  String? taskTitle,
  String? assignedTo,
  String? assignedBy,
  String? taskDescription,
  String? status,
  String? dateCreated,
  String? dateCompleted,
  String? tasksDogId,
  String? lastFollowUpAt,
  AssignedToUserStruct? assignedToUser,
  AssignedByUserStruct? assignedByUser,
  DogStruct? dog,
  String? id,
}) =>
    TasksWithDogStruct(
      taskTitle: taskTitle,
      assignedTo: assignedTo,
      assignedBy: assignedBy,
      taskDescription: taskDescription,
      status: status,
      dateCreated: dateCreated,
      dateCompleted: dateCompleted,
      tasksDogId: tasksDogId,
      lastFollowUpAt: lastFollowUpAt,
      assignedToUser: assignedToUser ?? AssignedToUserStruct(),
      assignedByUser: assignedByUser ?? AssignedByUserStruct(),
      dog: dog ?? DogStruct(),
      id: id,
    );
