class CrewEntity {
  final int id;
  final String knownForDepartment;
  final String name;
  final double popularity;
  final String image;
  final String department;
  final String job;

  CrewEntity({
    required this.department,
    required this.job,
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.popularity,
    required this.image,
  });
}
