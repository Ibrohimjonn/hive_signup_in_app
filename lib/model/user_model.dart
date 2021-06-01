class User {

  late String email;
  late String password;
  late String number;
  late String address;
  //#Sign in uchun
  User({required this.email, required this.password});
  User.fromJsom(Map<String, dynamic> json)
      :
        email=json['email'],
        password=json['password'];
  Map<String,dynamic> toJson(){
    return {'email':this.email,'password':this.password};
  }

  //Sign up uchun
  User.from({required this.email, required this.number, required this.address});
  User.fromJsonAccount(Map<String, dynamic> json):
        email=json['email'],
        number=json['number'],
        address=json['address'];
  Map<String,dynamic> toJsonAccount(){
    return {'email':this.email,'number':this.number,'address':this.address};
  }

}