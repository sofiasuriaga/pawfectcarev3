import '/backend/supabase/supabase.dart'; // Ensure this path correctly imports DogsRow

class FeedChartFilterUtils {
  static List<DogsRow> filterDogs({
    required List<DogsRow> allDogs,
    required String searchQuery,
  }) {
    if (searchQuery.isEmpty) {
      return allDogs;
    }

    final query = searchQuery.toLowerCase();

    return allDogs.where((dog) {
      // Assuming DogsRow has a field 'dogName'.
      // Adjust if your field name is different (e.g., dog_name).
      final bool nameMatch = dog.dogName.toLowerCase().contains(query);

      // To search by other fields, uncomment and adjust as needed:
      // final bool genderMatch = dog.dogGender?.toLowerCase().contains(query) ?? false;
      // final bool ageMatch = dog.dogAge?.toLowerCase().contains(query) ?? false;
      // final bool birthdayMatch = dog.dogBirthday?.toLowerCase().contains(query) ?? false;

      return nameMatch; // If searching multiple fields: return nameMatch || genderMatch || ageMatch;
    }).toList();
  }
}