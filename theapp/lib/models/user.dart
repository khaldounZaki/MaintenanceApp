class AppUser {
  String companyName;
  String email;
  String phone;
  bool? isVerfied;
  String? location;
  String? profilePic;
  String role;
  String password;

  AppUser({
    required this.companyName,
    required this.email,
    required this.password,
    required this.phone,
    required this.role,
    this.isVerfied = false,
    this.location = "UAE",
    this.profilePic,
  });
  @override
  String toString() {
    // TODO: implement toString
    return "companyName : $companyName , email : $email , phone : $phone , isVerfied : $isVerfied, location : $location , profilePic : $profilePic";
  }
}
