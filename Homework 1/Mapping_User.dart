import 'dart:convert';

class CoreTeam {
  final String name;
  final String faculty;
  final int year;
  final String role;

  CoreTeam(
    this.name,
    this.faculty,
    this.year,
    this.role);

  Map toJson() => {
    'name' : name,
    'faculty' : faculty,
    'year' : year,
    'role' : role
  };
}

void main() {
  List<CoreTeam> coreteams = [CoreTeam('Bintang Restu', 'Electrical and Information Engineering', 2021, 'Academic'), 
                              CoreTeam('Ferdian Nugraha', 'Math and Natural Sciences', 2021, 'Academic'),
                              CoreTeam('Aunur Ikmal Nugroho', 'Social and Political Sciences', 2021, 'Public Relation')];
  String jsonCoreteams = jsonEncode(coreteams);
  print(jsonCoreteams);
}
