class Profile {
  String name;
  String email;
  String department;

  Profile(
    this.name,
    this.email,
    this.department,
  );
}

List<Profile> profileList = [
  Profile('abdullah', 'abnation@gmail.com', 'IT'),
  Profile('ali', 'ali@gmail.com', 'Finance'),
  Profile('john', 'abnation@gmail.com', 'Architect'),
  Profile('sara', 'sara@gmail.com', 'HR'),
  Profile('sam', 'sam@gmail.com', 'Developer'),
  Profile('mark', 'mark@gmail.com', 'QA')
];
