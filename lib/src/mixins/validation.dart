class Validation{
  String validatePassword(String value){
    if (value.length<4){
      return 'Password minimal 4 Karakter';
    }
    return null;
  }
  String validateEmail(String value){
    if(!value.contains('@')){
      return 'Email Tidak Valid';
    }
    return null;
  }

  String validateName(String value){
    if(value.isEmpty){
      return 'Nama Lengkap Harus diisi';
    }
    return null;
  }
}