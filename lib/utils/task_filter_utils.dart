import '/backend/schema/structs/index.dart';

class TaskFilterUtils {
  static List<TasksWithDogStruct> filterAndSortTasks({
    required List<TasksWithDogStruct> allTasks,
    required String statusFilter,
    required String searchQuery,
    bool sortByDateCreatedDescending = true,
    bool sortByDateCompletedDescending = true,
  }) {
    if (allTasks.isEmpty) {
      return [];
    }

    List<TasksWithDogStruct> statusFilteredTasks = allTasks.where((task) {
      return task.status == statusFilter;
    }).toList();

    List<TasksWithDogStruct> searchFilteredTasks;
    if (searchQuery.isEmpty) {
      searchFilteredTasks = statusFilteredTasks;
    } else {
      final query = searchQuery.toLowerCase();
      searchFilteredTasks = statusFilteredTasks.where((task) {
        final bool titleMatch = task.taskTitle.toLowerCase().contains(query);
        final bool descriptionMatch = task.taskDescription.toLowerCase().contains(query);
        final bool dogNameMatch = task.dog.dogName?.toLowerCase().contains(query) ?? false;
        final bool assignedToMatch = task.assignedToUser.userFullname?.toLowerCase().contains(query) ?? false;
        final bool assignedFromMatch = task.assignedByUser.userFullname?.toLowerCase().contains(query) ?? false;

        return titleMatch || descriptionMatch || dogNameMatch || assignedToMatch || assignedFromMatch;
      }).toList();
    }

    if (statusFilter == 'Active') {
      searchFilteredTasks.sort((a, b) {
        final aDate = a.dateCreated;
        final bDate = b.dateCreated;

        if (aDate.isEmpty && bDate.isEmpty) return 0;
        if (aDate.isEmpty) return sortByDateCreatedDescending ? 1 : -1;
        if (bDate.isEmpty) return sortByDateCreatedDescending ? -1 : 1;

        return sortByDateCreatedDescending ? bDate.compareTo(aDate) : aDate.compareTo(bDate);
      });
    } else if (statusFilter == 'Completed') {
      searchFilteredTasks.sort((a, b) {
        final aDate = a.dateCompleted;
        final bDate = b.dateCompleted;

        if (aDate.isEmpty && bDate.isEmpty) return 0;
        if (aDate.isEmpty) return sortByDateCompletedDescending ? 1 : -1;
        if (bDate.isEmpty) return sortByDateCompletedDescending ? -1 : 1;

        return sortByDateCompletedDescending ? bDate.compareTo(aDate) : aDate.compareTo(bDate);
      });
    }

    return searchFilteredTasks;
  }
}