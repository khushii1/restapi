class User{
  final String email;
  final String gender;
  final String phone;
  final String cell;
  final String nat;
 final UserName name;
  final Picture pic;

  User({
    required this.email,
    required this.phone,
    required this.cell,
    required this.gender,
    required this.nat,
    required this.name,
    required this.pic,
});
}
class UserName{
  final String first;
  final String last;
  final String title;
  UserName({
    required this.first,
    required this.last,
    required this.title,
});

}class Picture{
   final String large;
   final String medium;
   final String thumbnail;
  Picture({
    required this.thumbnail,
    required this.medium,
    required this.large,
  });}
