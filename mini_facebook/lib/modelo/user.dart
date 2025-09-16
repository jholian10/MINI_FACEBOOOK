class User {
  String? usuario;
  String? fechaDeNacimiento;
  String? correo;
  String? password;
  User(Map json){
    this.usuario = json["usuario"];
    this.fechaDeNacimiento = json["fechaDeNacimiento"];
    this.correo = json["correo"];
    this.password = json["password"];
  }
}