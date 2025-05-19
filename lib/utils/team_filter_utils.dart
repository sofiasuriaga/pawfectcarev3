import '/backend/supabase/supabase.dart';

class TeamFilterUtils {
  static List<UsersRow> filterTeamMembers({
    required List<UsersRow> allMembers,
    required String searchQuery,
  }) {
    if (searchQuery.isEmpty) {
      return allMembers;
    }

    final query = searchQuery.toLowerCase();

    return allMembers.where((member) {
      final bool nameMatch = member.userFullname?.toLowerCase().contains(query) ?? false;
      // Add other fields to search here if needed, for example:
      // final bool emailMatch = member.email?.toLowerCase().contains(query) ?? false;
      // final bool roleMatch = member.userType?.toLowerCase().contains(query) ?? false;

      return nameMatch; // || emailMatch || roleMatch;
    }).toList();
  }
}