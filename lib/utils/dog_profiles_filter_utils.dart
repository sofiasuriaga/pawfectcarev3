import '/backend/supabase/supabase.dart';

class DogProfilesFilterUtils {
  static List<DogsRow> filterDoggos({
    required List<DogsRow> allDoggos,
    required String searchQuery,
  }) {
    if (searchQuery.isEmpty) {
      return allDoggos;
    }
    final query = searchQuery.toLowerCase();
    return allDoggos.where((doggo) {
      final bool nameMatch = doggo.dogName.toLowerCase().contains(query);
      // final bool genderMatch = doggo.dogGender?.toLowerCase().contains(query) ?? false;
      return nameMatch;
    }).toList();
  }
}