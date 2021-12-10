void main() {
  bool emailResult = emailValidation("kkk@gamil");
  bool phResult = phoneNumberValidation("123456");
  print(emailResult);
  print(phResult);
}

bool emailValidation(String email) {
  //var pattern = RegExp(r"^[\w.@#+\-]+@gmail\.com$");
  if (email.contains("@gmail.com")) {
    var gmailArr = email.split("@gmail.com");
    print("$gmailArr ${gmailArr.length}");
    if (gmailArr.length == 2 && gmailArr[0].isNotEmpty && gmailArr[1].isEmpty) {
      return true;
    }else {
      return false;
    }
  }else {
    return false ;
  }
}

bool phoneNumberValidation(String phone) {
  //var replaceInput = phone.replaceAll(RegExp("^[0][9]"), "+959");
  //print("Replace Input: $replaceInput");
  //var pattern = RegExp("^[+959]\\d{10,}");
  var phoneNo = phone;
  if (phoneNo.length >= 10) {
    var code = phone.substring(0, 2);
    print("Code $code");
    if (code == "09") {
      phoneNo = phone.replaceFirst("09", "+959");
      print("Code $phoneNo");
    }
    var countryCode = phoneNo.substring(0, 4);
    print("countryCode $countryCode");
    if (countryCode == "+959") {
      return true;
    } else
      return false;
  } else {
    return false;
  }
}
